import json
import requests
import urllib
import sys

kScope = 'http://api.microsofttranslator.com'
kOAuthUrl = 'https://datamarket.accesscontrol.windows.net/v2/OAuth2-13'

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
            print reponse

            if "error" in response:
                print("Can't get access token because of error in repsonse")
                return None

            return response['access_token']
        except OSError as e:
            print("Can't get access token: {0}".format(e))

        return None

    if __name__ == "__main__":
        translator = Translator()
        translator.getAccessToken()
        print translator.accessToken




