" Vim syntax file
" Language:     Objective-C
" Maintainer:   Jason Foreman <jason@threeve.org>
"
" This is a complete rewrite of the Objective-C syntax for Vim and
" is intended as a replacement for the bundled version.

if exists("b:current_syntax")
    finish
endif

" start with C syntax
runtime! syntax/c.vim

syn clear cUserLabel
syn clear cUserCont

" #import
syn match objcImport display "^\s*\(%:\|#\)\s*import\>\s*["<]" contains=cIncluded

" Objective-C compiler directives
"syn region objcImp start='@implementation' end='\(:\|\$\)' transparent
"syn region objcHeader start='@interface' end='@end' transparent
"syn match objcSubclass '\(@implementation\|@interface\)\@<=\s*\w\+' display contained containedin=objcImp,objcHeader
"syn match customClass '@interface\@<=\w+' contained
"syn region objcSubclass start='^\s*\(@implementation\|@interface\)\@<=\s*\w+' end='\w\+' display 
"syn match objcSuperclass '\(@\(implementation\|interface\)\s*\k\+\s*:\)\@<=\s*\k*' display contained containedin=objcImp,objcHeader
syn match objcClassKeywords "^\s*\(@implementation\|@interface\)"
syn match objcSubclass "^\s*\(@implementation\|@interface\)\s*\w\+" contains=objcClassKeywords
syn match objcDirective display "@protocol\|@class\|@end\|@synthesize\|@dynamic"
syn match objcDirective display "@required\|@optional"
syn match objcDirective display "@synchronized\|@autoreleasepool"
syn match objcDirective display "@selector\|@encode"
syn match objcAccess display "@public\|@private\|@protected\|@package"
syn match objcException display "@try\|@catch\|@finally\|@throw"

" Objective-C Declared Properties
syn region objcPropertyDeclaration start=+@property+ end=+;+ transparent
syn match objcPropertyDirective "@property" display contained containedin=objcPropertyDeclaration
syn keyword objcPropertyAttribute readonly readwrite nonatomic assign retain copy strong weak getter setter contained containedin=objcPropertyDeclaration

" Objective-C extensions (types, constants, etc)
syn keyword objcReturn return
syn keyword objcBoolean YES NO TRUE FALSE
syn keyword objcConstant nil Nil
syn keyword objcType id Class Protocol Method Ivar Category SEL IMP objc_property_t BOOL
syn keyword objcStatement self super _cmd
syn match objcFormat display "%@" contained
syn region objcString start='@"' end='"' contains=cFormat,cSpecial,objcFormat,@Spell

" Cocoa class
syn match objcCocoaClass '\(NS\|UI\|CGFl\)\w\+'
syn match Delimiter '(\|)\|*\|:\|@\[\|\[\|\]\|->\|,\|+\|-\|=\|!'
syn match objcMethodSign '^\s\=-\|+\s\+'

hi def link objcPropertyDirective objcType
hi def link objcClassKeywords objcType 
hi def link objcAccess Statement
hi def link objcBoolean Boolean
hi def link objcConstant cNumber 
hi def link objcDirective objcType 
hi def link objcException Exception
hi def link objcFormat SpecialChar
hi def link objcImport Include
hi def link objcPropertyAttribute Keyword
hi def link objcStatement Statement
hi def link objcString String
hi def link objcType cType
hi def link objcReturn      Return

let b:current_syntax = "objc"
