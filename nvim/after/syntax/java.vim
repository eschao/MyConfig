" Vim syntax file
" Language:	Java
" Maintainer:	chao
" URL:		http://www.fleiner.com/vim/syntax/java.vim
" Last Change:	2012 Oct 05

" Please check :help java.vim for comments on some of the options available.

" Quit when a syntax file was already loaded

"syn region javaFold start="{" end="}" transparent fold

"let s:cpo_save = &cpo
"set cpo&vim

" don't use standard HiLink, it will not work with included syntax files
"if version < 508
"  command! -nargs=+ JavaHiLink hi link <args>
"else
"  command! -nargs=+ JavaHiLink hi def link <args>
"endif

" some characters that cannot be in a java program (outside a string)
"syn match javaError [\\@`]"
"syn match javaError <<<\|\.\.\|=>\|||=\|&&=\|\*\/"

"syn match javaOK \.\.\."

" use separate name so that it can be deleted in javacc.vim
"syn match   javaError2 "#\|=<"
"JavaHiLink javaError2 javaError



" keyword definitions
"syn keyword javaExternal	native 
"syn match javaPackage          ^\s*\(package\|import\)"
"syn match javaPackageName      ^\s*\(package\|import\)\s*\w+" display contains=javaPackage
"syn match javaExternal		^\s*import\(\s\+static\>\)\?"
"syn keyword javaError		goto const
"syn keyword javaConditional	if else switch
"syn keyword javaRepeat		while for do
"syn keyword javaBoolean		true false
"syn keyword javaConstant	null
"syn keyword javaTypedef		this super
"syn keyword javaOperator	new instanceof
"syn keyword javaType		boolean char byte short int long float double
"syn keyword javaType		void
"syn keyword javaStatement	return
"syn keyword javaStorageClass	static synchronized transient volatile final strictfp serializable
"syn keyword javaExceptions	throw try catch finally
"syn keyword javaAssert		assert
"syn keyword javaMethodDecl	synchronized throws
"syn keyword javaClassDecl	extends implements interface class
" to differentiate the keyword class from MyClass.class we use a match here
"syn match   javaTypedef		\.\s*\<class\>"ms=s+1
"syn keyword javaClassDecl	enum
"syn match   javaClassDecl	^class\>"
"syn match   javaClassDecl	[^.]\s*\<class\>"ms=s+1
"syn match   javaAnnotation	@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"
"syn match   javaClassDecl	@interface\>"
"syn keyword javaBranch		break continue nextgroup=javaUserLabelRef skipwhite
"syn match   javaUserLabelRef	\k\+" contained
"syn match   javaVarArg		\.\.\."
"syn keyword javaScopeDecl	public protected private abstract

"if exists("java_highlight_java_lang_ids")
"  let java_highlight_all=1
"endif
"if exists("java_highlight_all")  || exists("java_highlight_java")  || exists("java_highlight_java_lang") 
  " java.lang.*
"  syn match javaLangClass \<System\>"
"  syn keyword javaR_JavaLang NegativeArraySizeException ArrayStoreException IllegalStateException RuntimeException IndexOutOfBoundsException UnsupportedOperationException ArrayIndexOutOfBoundsException ArithmeticException ClassCastException EnumConstantNotPresentException StringIndexOutOfBoundsException IllegalArgumentException IllegalMonitorStateException IllegalThreadStateException NumberFormatException NullPointerException TypeNotPresentException SecurityException
"  syn cluster javaTop add=javaR_JavaLang
"  syn cluster javaClasses add=javaR_JavaLang
"  JavaHiLink javaR_JavaLang javaR_Java
"  syn keyword javaC_JavaLang Process RuntimePermission StringKeySet CharacterData01 Class ThreadLocal ThreadLocalMap CharacterData0E Package Character StringCoding Long ProcessImpl ProcessEnvironment Short AssertionStatusDirectives 1PackageInfoProxy UnicodeBlock InheritableThreadLocal AbstractStringBuilder StringEnvironment ClassLoader ConditionalSpecialCasing CharacterDataPrivateUse StringBuffer StringDecoder Entry StringEntry WrappedHook StringBuilder StrictMath State ThreadGroup Runtime CharacterData02 MethodArray Object CharacterDataUndefined Integer Gate Boolean Enum Variable Subset StringEncoder Void Terminator CharsetSD IntegerCache CharacterCache Byte CharsetSE Thread SystemClassLoaderAction CharacterDataLatin1 StringValues StackTraceElement Shutdown ShortCache String ConverterSD ByteCache Lock EnclosingMethodInfo Math Float Value Double SecurityManager LongCache ProcessBuilder StringEntrySet Compiler Number UNIXProcess ConverterSE ExternalData CaseInsensitiveComparator CharacterData00 NativeLibrary
"  syn cluster javaTop add=javaC_JavaLang
"  syn cluster javaClasses add=javaC_JavaLang
"  JavaHiLink javaC_JavaLang javaC_Java
"  syn keyword javaE_JavaLang IncompatibleClassChangeError InternalError UnknownError ClassCircularityError AssertionError ThreadDeath IllegalAccessError NoClassDefFoundError ClassFormatError UnsupportedClassVersionError NoSuchFieldError VerifyError ExceptionInInitializerError InstantiationError LinkageError NoSuchMethodError Error UnsatisfiedLinkError StackOverflowError AbstractMethodError VirtualMachineError OutOfMemoryError
"  syn cluster javaTop add=javaE_JavaLang
"  syn cluster javaClasses add=javaE_JavaLang
"  JavaHiLink javaE_JavaLang javaE_Java
"  syn keyword javaX_JavaLang CloneNotSupportedException Exception NoSuchMethodException IllegalAccessException NoSuchFieldException Throwable InterruptedException ClassNotFoundException InstantiationException
"  syn cluster javaTop add=javaX_JavaLang
"  syn cluster javaClasses add=javaX_JavaLang
"  JavaHiLink javaX_JavaLang javaX_Java

  "JavaHiLink javaR_Java javaR_
  "JavaHiLink javaC_Java javaC_
  "JavaHiLink javaE_Java javaE_
  "JavaHiLink javaX_Java javaX_
  "JavaHiLink javaX_		     javaExceptions
  "JavaHiLink javaR_		     javaExceptions
  "JavaHiLink javaE_		     javaExceptions
  "JavaHiLink javaC_		     javaConstant

  "syn keyword javaLangObject clone equals finalize getClass hashCode
  "syn keyword javaLangObject notify notifyAll toString wait
  "JavaHiLink javaLangObject		     javaConstant
  "syn cluster javaTop add=javaLangObject
"endif

"if filereadable(expand("<sfile>:p:h")."/javaid.vim")
"  source <sfile>:p:h/javaid.vim
"endif

"if exists("java_space_errors")
"  if !exists("java_no_trail_space_error")
"    syn match	javaSpaceError	\s\+$"
"  endif
"  if !exists("java_no_tab_space_error")
"    syn match	javaSpaceError	 \+\t"me=e-1
"  endif
"endif

"syn region  javaLabelRegion	transparent matchgroup=javaLabel start="\<case\>" matchgroup=NONE end=":" contains=javaNumber,javaCharacter,javaString
"syn match   javaUserLabel	^\s*[_$a-zA-Z][_$a-zA-Z0-9_]*\s*:"he=e-1 contains=javaLabel
"syn keyword javaLabel		default

" highlighting C++ keywords as errors removed, too many people find it
" annoying.  Was: if !exists("java_allow_cpp_keywords")

" The following cluster contains all java groups except the contained ones
"syn cluster javaTop add=javaExternal,javaError,javaError,javaBranch,javaLabelRegion,javaLabel,javaConditional,javaRepeat,javaBoolean,javaConstant,javaTypedef,javaOperator,javaType,javaType,javaStatement,javaStorageClass,javaAssert,javaExceptions,javaMethodDecl,javaClassDecl,javaClassDecl,javaClassDecl,javaScopeDecl,javaError,javaError2,javaUserLabel,javaLangObject,javaAnnotation,javaVarArg


" Comments
"syn keyword javaTodo		 contained TODO FIXME XXX
"if exists("java_comment_strings")
"  syn region  javaCommentString    contained start=+"+ end=+"+ end=+$+ end=+\*/+me=s-1,he=s-1 contains=javaSpecial,javaCommentStar,javaSpecialChar,@Spell
"  syn region  javaComment2String   contained start=+"+	end=+$\|"+  contains=javaSpecial,javaSpecialChar,@Spell
"  syn match   javaCommentCharacter contained '\\[^']\{1,6\}'" contains=javaSpecialChar
"  syn match   javaCommentCharacter contained '\\''" contains=javaSpecialChar
"  syn match   javaCommentCharacter contained '[^\\]'"
"  syn cluster javaCommentSpecial add=javaCommentString,javaCommentCharacter,javaNumber
"  syn cluster javaCommentSpecial2 add=javaComment2String,javaCommentCharacter,javaNumber
"endif
syn region  javaComment		 start="/\*"  end="\*/" 
"contains=@javaCommentSpecial,javaTodo,@Spell
syn match   javaCommentStar	 contained "^\s*\*[^/]"me=e-1
syn match   javaCommentStar	 contained "^\s*\*$"
syn match   javaLineComment	 "//.*" 
"contains=@javaCommentSpecial2,javaTodo,@Spell
"JavaHiLink javaCommentString javaString
"JavaHiLink javaComment2String javaString
"JavaHiLink javaCommentCharacter javaCharacter

"syn cluster javaTop add=javaComment,javaLineComment

"if !exists("java_ignore_javadoc") 
"  syntax case ignore
  " syntax coloring for javadoc comments (HTML)
"  syntax include @javaHtml <sfile>:p:h/html.vim
"  unlet b:current_syntax
  " HTML enables spell checking for all text that is not in a syntax item. This
  " is wrong for Java (all identifiers would be spell-checked), so it's undone
  " here.
"  syntax spell default

"  syn region  javaDocComment	start="/\*\*"  end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,javaTodo,@Spell
"  syn region  javaCommentTitle	contained matchgroup=javaDocComment start="/\*\*"   matchgroup=javaCommentTitle keepend end="\.$" end="\.[ \t\r<&]"me=e-1 end="[^{]@"me=s-2,he=s-1 end="\*/"me=s-1,he=s-1 contains=@javaHtml,javaCommentStar,javaTodo,@Spell,javaDocTags,javaDocSeeTag

"  syn region javaDocTags	 contained start="{@\(code\|link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}"
"  syn match  javaDocTags	 contained @\(param\|exception\|throws\|since\)\s\+\S\+" contains=javaDocParam
"  syn match  javaDocParam	 contained \s\S\+"
"  syn match  javaDocTags	 contained @\(version\|author\|return\|deprecated\|serial\|serialField\|serialData\)\>"
"  syn region javaDocSeeTag	 contained matchgroup=javaDocTags start="@see\s\+" matchgroup=NONE end="\_."re=e-1 contains=javaDocSeeTagParam
"  syn match  javaDocSeeTagParam  contained @"\_[^"]\+"\|<a\s\+\_.\{-}</a>\|\(\k\|\.\)*\(#\k\+\((\_[^)]\+)\)\=\)\=@ extend
"  syntax case match
"endif

" match the special comment /**/
"syn match   javaComment		 /\*\*/"

" Strings and constants
"syn match   javaSpecialError	 contained \\."
"syn match   javaSpecialCharError contained [^']"
"syn match   javaSpecialChar	 contained \\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
"syn region  javaString		start=+"+ end=+"+ end=+$+ contains=javaSpecialChar,javaSpecialError,@Spell
" next line disabled, it can cause a crash for a long line
"syn match   javaStringError	  +"\([^"\\]\|\\.\)*$+
"syn match   javaCharacter	 '[^']*'" contains=javaSpecialChar,javaSpecialCharError
"syn match   javaCharacter	 '\\''" contains=javaSpecialChar
"syn match   javaCharacter	 '[^\\]'"
"syn match   javaNumber		 \<\(0[bB][0-1]\+\|0[0-7]*\|0[xX]\x\+\|\d\(\d\|_\d\)*\)[lL]\=\>"
"syn match   javaNumber		 \(\<\d\(\d\|_\d\)*\.\(\d\(\d\|_\d\)*\)\=\|\.\d\(\d\|_\d\)*\)\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\="
"syn match   javaNumber		 \<\d\(\d\|_\d\)*[eE][-+]\=\d\(\d\|_\d\)*[fFdD]\=\>"
"syn match   javaNumber		 \<\d\(\d\|_\d\)*\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\>"

" unicode characters
"syn match   javaSpecial \\u\d\{4\}"

"syn cluster javaTop add=javaString,javaCharacter,javaNumber,javaSpecial,javaStringError

"if exists("java_highlight_functions")
"  if java_highlight_functions == indent"
"    syn match  javaFuncDef ^\(\t\| \{8\}\)[_$a-zA-Z][_$a-zA-Z0-9_. \[\]]*([^-+*/()]*)" contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
"    syn region javaFuncDef start=+^\(\t\| \{8\}\)[$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*,\s*+ end=+)+ contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
"    syn match  javaFuncDef ^  [$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*)" contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
"    syn region javaFuncDef start=+^  [$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*,\s*+ end=+)+ contains=javaScopeDecl,javaType,javaStorageClass,@javaClasses
"  else
    " This line catches method declarations at any indentation>0, but it assumes
    " two things:
    "	1. class names are always capitalized (ie: Button)
    "	2. method names are never capitalized (except constructors, of course)
"    syn region javaFuncDef start=+^\s\+\(\(public\|protected\|private\|static\|abstract\|final\|native\|synchronized\)\s\+\)*\(\(void\|boolean\|char\|byte\|short\|int\|long\|float\|double\|\([A-Za-z_][A-Za-z0-9_$]*\.\)*[A-Z][A-Za-z0-9_$]*\)\(<[^>]*>\)\=\(\[\]\)*\s\+[a-z][A-Za-z0-9_$]*\|[A-Z][A-Za-z0-9_$]*\)\s*([^0-9]+ end=+)+ contains=javaScopeDecl,javaType,javaStorageClass,javaComment,javaLineComment,@javaClasses
"  endif
"  syn match  javaBraces  [{}]"
"  syn cluster javaTop add=javaFuncDef,javaBraces
"endif

"if exists("java_highlight_debug")

  " Strings and constants
"  syn match   javaDebugSpecial		contained \\\d\d\d\|\\."
"  syn region  javaDebugString		contained start=+"+  end=+"+  contains=javaDebugSpecial
"  syn match   javaDebugStringError	+"\([^"\\]\|\\.\)*$+
"  syn match   javaDebugCharacter	contained '[^\\]'"
"  syn match   javaDebugSpecialCharacter contained '\\.'"
"  syn match   javaDebugSpecialCharacter contained '\\''"
"  syn match   javaDebugNumber		contained \<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
"  syn match   javaDebugNumber		contained \(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
"  syn match   javaDebugNumber		contained \<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
"  syn match   javaDebugNumber		contained \<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
"  syn keyword javaDebugBoolean		contained true false
"  syn keyword javaDebugType		contained null this super
"  syn region javaDebugParen  start=+(+ end=+)+ contained contains=javaDebug.*,javaDebugParen

  " to make this work you must define the highlighting for these groups
"  syn match javaDebug \<System\.\(out\|err\)\.print\(ln\)*\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen
"  syn match javaDebug \<p\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen
"  syn match javaDebug [A-Za-z][a-zA-Z0-9_]*\.printStackTrace\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen
"  syn match javaDebug \<trace[SL]\=\s*("me=e-1 contains=javaDebug.* nextgroup=javaDebugParen

"  syn cluster javaTop add=javaDebug

"  if version >= 508 || !exists("did_c_syn_inits")
"    JavaHiLink javaDebug		 Debug
"    JavaHiLink javaDebugString		 DebugString
"    JavaHiLink javaDebugStringError	 javaError
"    JavaHiLink javaDebugType		 DebugType
"    JavaHiLink javaDebugBoolean		 DebugBoolean
"    JavaHiLink javaDebugNumber		 Debug
"    JavaHiLink javaDebugSpecial		 DebugSpecial
"    JavaHiLink javaDebugSpecialCharacter DebugSpecial
"    JavaHiLink javaDebugCharacter	 DebugString
"    JavaHiLink javaDebugParen		 Debug

"    JavaHiLink DebugString		 String
"    JavaHiLink DebugSpecial		 Special
"    JavaHiLink DebugBoolean		 Boolean
"    JavaHiLink DebugType		 Type
"  endif
"endif

"if exists("java_mark_braces_in_parens_as_errors")
"  syn match javaInParen		 contained [{}]"
"  JavaHiLink javaInParen	javaError
"  syn cluster javaTop add=javaInParen
"endif

" catch errors caused by wrong parenthesis
"syn region  javaParenT	transparent matchgroup=javaParen  start="("  end=")" contains=@javaTop,javaParenT1
"syn region  javaParenT1 transparent matchgroup=javaParen1 start="(" end=")" contains=@javaTop,javaParenT2 contained
"syn region  javaParenT2 transparent matchgroup=javaParen2 start="(" end=")" contains=@javaTop,javaParenT  contained
"syn match   javaParenError	 )"
" catch errors caused by wrong square parenthesis
"syn region  javaParenT	transparent matchgroup=javaParen  start="\["  end="\]" contains=@javaTop,javaParenT1
"syn region  javaParenT1 transparent matchgroup=javaParen1 start="\[" end="\]" contains=@javaTop,javaParenT2 contained
"syn region  javaParenT2 transparent matchgroup=javaParen2 start="\[" end="\]" contains=@javaTop,javaParenT  contained
"syn match   javaParenError	 \]"

"JavaHiLink javaParenError	javaError

syn clear javaExternal
syn match javaPackage           "^\s*package\s\+"
syn match javaImport            "^\s*import\s\+\(static\)\?"
syn match javaDelimiter         "(\|)\|*\|:\|\[\|\]\|,\|->\|<\|>\|=\|+\|-\|!"
syn match javaImportPackage     "^\s*import\s\+\(static\s\+\)\?\S\+$" contains=javaImport
syn match javaPackageName       "^\s*package\s\+\S\+$" contains=javaPackage
syn keyword javaUtilClass       Collection Comparator Deque Enumeration EventListener Formattable Iterator List ListIterator Map NavigableMap NavigableSet Observer Queue RandomAccess Set SortedMap SortedSet AbstractCollection AbstractList AbstractMap AbstractQueue AbstractSequentialList AbstractSet ArrayDeque ArrayList Arrays BitSet Calendar Collections Currency Date Dictionary EnumMap EnumSet EventListenerProxy EventObject FormattableFlags Formatter GregorianCalendar HashMap HashSet Hashtable IdentityHashMap LinkedHashMap LinkedHashSet LinkedList ListResourceBundle Locale Objects Observable PriorityQueue Properties PropertyPermission PropertyResourceBundle Random ResourceBundle Scanner ServiceLoader SimpleTimeZone Stack StringTokenizer Timer TimerTask TimerZone TreeMap TreeSet UUID Vector WeakHashMap
syn keyword javaIOClass         Closeable DataInput DataOutput Externalizable FileFilter FilenameFilter Flushable ObjectInput ObjectInputValidation ObjectOutput ObjectStreamConstants Serializable BufferedInputStream BufferedOutputStream BufferedReader BufferedWriter ByteArrayInputStream ByteArrayOutputStream CharArrayReader CharArrayWriter Console DataInputStream DataOutputStream File FileDescriptor FileInputStream FileOutputStream FilePermission FileReader FileWriter FilterInputStream FilterOutputStream FilterReader FilterWriter InputStream InputStreamReader LineNumberInputStream LineNumberReader ObjectInputStream ObjectOutputStream ObjectStreamClass ObjectStreamField OutputStream OutputStreamWriter PipedInputStream PipedoutputStream PipedReader PipedWriter PrintStream PrintWriter PushbackInputStream PushbackReader RandomAccessFile Reader SequenceInputStream SerializablePermission StreamTokenizer StringBufferInputStream StringReader StringWriter Writer ChaConversionException EOFException FileNotFoundException InterruptedException InvalidClassException InvalidObjectException IOException NotActiveException NotSerializableException ObjectStreamException OptionalDataException StreamCorruptedException SyncFailedException UnsupportedEncodingException UTFDataFormatException WriteAbortedException
syn keyword javaLangClass       Appendable AutoCloseable CharSequence Cloneable Comparable Iterable Readable Runnable Boolean Byte Character Class ClassLoader Compiler Double Enum Float InheritableThreadLocal Integer Long Math Number Object Package Process ProcessBuilder Runtime RuntimePermission SecurityManager Short stackTraceElement StrictMath String StringBuffer StringBuilder System Thread ThreadGroup ThreadLocal Throwable Void AirthmeticException ArrayIndexOutOfBoundsException ArrayStoreException ClassCastException ClassNotFoundException CloneNotSupportedException EnumConstantNotPresentException Exception IllegalAccessException IllegalArgumentException IllegalMonitorStateException IllegalStateException IllegalThreadStateException IndexOutOfBoundsException InstantiationError NegativeArraySizeException NoSuchFieldError NullPointerException NumberFormatException ReflectiveOperationException RuntimeException SecurityException StringIndexOutOfBoundsException TypeNotPresentException UnsupportedOperationException
syn keyword javaNetClass        ContentHandlerFactory CookiePolicy CookieStore DatagramSocketImplFactory FileNameMap SocketOptions URLStreamHandlerFactory Authenticator CacheRequest CacheResponse ContentHandler CookieHandler DatagramPacket DatagramSocketImpl HttpCookie HttpURLConnection IDN Inet4Address Inet6Address InetAddress InetSocketAddress InterfaceAddress JarURLConnection MulticastSocket NetPermission NetworkInterface PasswordAuthentication Proxy PorxySelector ResponseCache SecureCacheResponse ServerSocket Socket SocketAddress SocketImpl SocketPermission URI URL URLClassLoader URLConnection URLDecoder URLEncoder URLStreamHandler BindException ConnectException HttpRetryException MalformedURLException NoRouteToHostException PortUnreachableException ProtocolException SocketException SocketTimeoutException UnknownHostException UnknownServiceException URISyntaxException 
syn keyword javaTextClass       AttributedCharacterIterator CharacterIterator Annotation AttributedString Bidi BreakIterator ChoiceFormat CollationElementIterator CollationKey Collator DateFormat DateFormatSymbols FieldPosition Format MessageFormat Normalizer NumberFormat ParsePosition RuleBasedCollator SimpleDateFormat StringCharacterIterator ParseException
syn keyword javaReturn          return

hi def link javaComment         Comments
hi def link javaLineComment     Comments
hi def link javaClassDecl       cType
hi def link javaScopeDecl       cType
hi def link javaReturn          Return
hi def link javaDelimiter       Delimiter 
hi def link javaPackage         PreProc  
hi def link javaImport          PreProc
hi def link javaImportPackage   String
hi def link javaPackageName     String
hi def link javaLangClass       BuiltInClass
hi def link javaUtilClass       BuiltInClass
hi def link javaIOClass         BuiltInClass
hi def link javaNetClass        BuiltInClass
hi def link javaTextClass       BuiltInClass

" The default highlighting.
"let b:current_syntax = java"

" vim: ts=8
