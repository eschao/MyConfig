# -*- coding: utf-8 -*-
import json
import requests
import urllib
import sys
from xml.etree import ElementTree
from HTMLParser import HTMLParser

kScope = 'http://api.microsofttranslator.com'
kOAuthUrl = 'https://datamarket.accesscontrol.windows.net/v2/OAuth2-13'
kTranslate = 'http://api.microsofttranslator.com/v2/Http.svc/Translate?text={}&from={}&to={}'
kLanguages = {'afrikanns' : 'af',
              'arabic' : 'ar',
              'bosnian' : 'bs-Latn',
              'bulgarian' : 'bg',
              'catalan' : 'ca',
              'chinese' : 'zh-CHS',
              'chinese traditional' : 'zh-CHT',
              'croatian' : 'hr',
              'czech' : 'cs',
              'danish' : 'da',
              'dutch' : 'nl',
              'english' : 'en',
              'estonian' : 'et',
              'finnish' : 'fi',
              'french' : 'fr',
              'german' : 'de',
              'greek' : 'el',
              'haitian creole' : 'ht',
              'hebrew' : 'he',
              'hindi' : 'hi',
              'hmong daw' : 'mww',
              'hungarian' : 'hu',
              'indonesian' : 'id',
              'italian' : 'it',
              'japanese' : 'ja',
              'kiswahili' : 'sw',
              'klingon' : 'tlh',
              'korean' : 'ko',
              'latvian' : 'lv',
              'lithuanian' : 'lt',
              'malay' : 'ms',
              'maltese' : 'mt',
              'norwegian' : 'no',
              'persian' : 'fa',
              'polish' : 'pl',
              'portuguese' : 'pt',
              'romanian' : 'ro',
              'russian' : 'ru',
              'serbian' : 'sr-Latn',
              'serbian cyrillic' : 'sr-Cyrl',
              'slovak' : 'sk',
              'slovenian' : 'sl',
              'spanish' : 'es',
              'swedish' : 'sv',
              'thai' : 'th',
              'turkish' : 'tr',
              'ukrainian' : 'uk',
              'urdu' : 'ur',
              'vietnamese' : 'vi',
              'welsh' : 'cy',
              'yucatec maya' : 'yua' }

class ResultParser(HTMLParser):
    def __init__(self):
        HTMLParser.__init__(self)
        self.result = None

    def handle_starttag(self, tag, attrs):
        if (tag != 'meta'):
            return

        attrDict = dict(attrs)
        if ((not attrDict.has_key('name')) or
            attrDict.get('name') != 'description'):
            return

        self.result = attrDict.get('content').encode('utf-8')

class TranslateException(Exception):
    pass

class Translator:

    def __init__(self,
                 clientId,
                 clientSecret,
                 grantType='client_credentials'):
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.grantType = grantType
        self.accessToken = None

    def getAccessToken(self):
        params = {
            'client_id' : self.clientId,
            'client_secret' : self.clientSecret,
            'scope' : kScope,
            'grant_type' : self.grantType
        }

        try:
            response = requests.post(kOAuthUrl,
                                     data = urllib.urlencode(params)).json();
            print response

            if "error" in response:
                print("Can't get access token because of error in response")
                return None

            return response[('access_token')]
        except OSError as e:
            print("Can't get access token: {0}".format(e))

        return None

    def translate(self,
                  fromLang,
                  toLang,
                  text):
        if (fromLang == None or toLang == None or text == None):
            print ("Params are None")
            return None

        fromAbbe = kLanguages[fromLang.lower()]
        toAbbe = kLanguages[toLang.lower()]
        if (fromAbbe == None or toAbbe == None):
            return None

        headers = {"Authorization ": "Bearer " + self.accessToken}
        queryUrl = kTranslate.format(text, fromAbbe, toAbbe)
        print queryUrl

        try:
            response = requests.get(queryUrl, headers = headers)
            print response.text
            translation = ElementTree.fromstring(response.text.encode('utf-8'))
            return translation.text
        except OSError as e:
            print ("Failed to translate: {0}".format(e))

        return None

    def translateEn2Zh(self, text):
        queryUrl = 'http://cn.bing.com/dict?q={}'.format(text)
        try:
            response = requests.get(queryUrl)
            parser = ResultParser()
            parser.feed(response.text)
            print parser.result
            result = {'phonetic':None, 'meaning':None, 'web':None}
            data = self.preprocess(parser.result)
            data = self.getPhonetic(data, result)
            data = self.getWebMeaning(data, result)
            self.getMeaning(data, result)
            print ("Phonetic: {}".format(result['phonetic']))
            print ("Web: " + result['web'])
            if (result['meaning'] != None):
                print ("Meaning: " + '\n'.join(result['meaning']))

        except OSError as e:
            print ("Failed to translate: {0}".format(e))

    def preprocess(self, data):
        if (data == None or len(data) < 1):
            return data

        tag = u'释义，'.encode('utf-8')
        start = data.find(tag)
        if (start >= 0):
            return data[start + len(tag):]

        return data

    def getPhonetic(self, data, result):
        if (data == None or len(data) < 1):
            return data

        start = data.find(u'美['.encode('utf-8'))
        if (start < 0):
            return data

        endPhonetic = u']'.encode('utf-8')
        end = data.find(endPhonetic, start)
        if (end < 0):
            return None

        end += len(endPhonetic)
        t = data.find(endPhonetic, end)
        if (t > end):
            end = t + len(endPhonetic)

        result['phonetic'] = data[start:end]
        return data[end:]

    def getWebMeaning(self, data, result):
        if (data == None or len(data) < 1):
            return data

        start = data.find(u'网络释义：'.encode('utf-8'))
        if (start < 0):
            return data

        result['web'] = data[start:]
        return data[:start]

    def getMeaning(self, data, result):
        end = len(data)
        if (data == None or end < 1):
            return

        start = 0
        start = data.rfind('.')
        meanings = []
        while (start >= 0):
            t = data.rfind(' ', 0, start)
            if (t >= 0):
                meanings.append(data[t+1:end])
                end = t
                start = data.rfind('.', 0, end)
            else:
                break

        if (end > 0):
            meanings.append(data[:end])

        if (len(meanings) > 0):
            result['meaning'] = meanings


if __name__ == "__main__":
    myClientId = 'eschao_word_translator'
    myClientSecret = 'BmnjsO7dWZGmSp1sxEAu7tobUmh0qDNWPR5hOUODMpc='
    translator = Translator(myClientId, myClientSecret)
    #translator.accessToken = translator.getAccessToken()
    #print translator.accessToken
    #print translator.translate('english', 'chinese', 'smug')
    translator.translateEn2Zh('welcome to home')
    translator.translateEn2Zh('smug')
    translator.translateEn2Zh('animus')

