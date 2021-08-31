local colors = require("vscode.colors")
local theme = {}

theme.load_syntax = function()
	local c = colors.generate()
	local syntax = {
		-- GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL
		Normal = { c.vscFront, c.vscBack, 'none', nil},
		ColorColumn = { nil, c.vscCursorDarkDark, 'none', nil},
		Cursor = { c.vscCursorDark, c.vscCursorLight, 'none', nil},
		CursorLine = { nil, c.vscCursorDarkDark, 'none', nil},
		CursorColumn = { nil, c.vscCursorDarkDark, 'none', nil},
		Directory = { c.vscBlue, c.vscBack, 'none', nil},
		DiffAdd = { nil, c.vscDiffGreenLight, 'none', nil},
		DiffChange = { nil, c.vscDiffRedDark, 'none', nil},
		DiffDelete = { nil, c.vscDiffRedLight, 'none', nil},
		DiffText = { nil, c.vscDiffRedLight, 'none', nil},
		EndOfBuffer = { c.vscBack, nil, 'none', nil},
		ErrorMsg = { c.vscRed, c.vscBack, 'none', nil},
		VertSplit = { c.vscSplitDark, c.vscBack, 'none', nil},
		Folded = { c.vscLeftLight, c.vscLeftDark, 'underline', nil},
		FoldColumn = { c.vscLineNumber, c.vscBack, 'none', nil},
		SignColumn = { nil, c.vscBack, 'none', nil},
		IncSearch = { c.vscNone, c.vscSearchCurrent, 'none', nil},
		LineNr = { c.vscLineNumber, c.vscBack, 'none', nil},
		CursorLineNr = { c.vscPopupFront, c.vscBack, 'none', nil},
		MatchParen = { c.vscNone, c.vscCursorDark, 'none', nil},
		ModeMsg = { c.vscFront, c.vscLeftDark, 'none', nil},
		MoreMsg = { c.vscFront, c.vscLeftDark, 'none', nil},
		NonText = { c.vscLineNumber, c.vscBack, 'none', nil},
		Pmenu = { c.vscPopupFront, c.vscPopupBack, 'none', nil},
		PmenuSel = { c.vscPopupFront, c.vscPopupHighlightBlue, 'none', nil},
		PmenuSbar = { nil, c.vscPopupHighlightGray, 'none', nil},
		PmenuThumb = { nil, c.vscPopupFront, 'none', nil},
		Question = { c.vscBlue, c.vscBack, 'none', nil},
		Search = { c.vscNone, c.vscSearch, 'none', nil},
		SpecialKey = { c.vscBlue, c.vscNone, 'none', nil},
		StatusLine = { c.vscFront, c.vscLeftMid, 'none', nil},
		StatusLineNC = { c.vscFront, c.vscLeftDark, 'none', nil},
		TabLine = { c.vscFront, c.vscTabOther, 'none', nil},
		TabLineFill = { c.vscFront, c.vscTabOutside, 'none', nil},
		TabLineSel = { c.vscFront, c.vscTabCurrent, 'none', nil},
		Title = { c.vscNone, c.vscNone, 'bold', nil},
		Visual = { c.vscNone, c.vscSelection, 'none', nil},
		VisualNOS = { c.vscNone, c.vscSelection, 'none', nil},
		WarningMsg = { c.vscOrange, c.vscBack, 'none', nil},
		WildMenu = { c.vscNone, c.vscSelection, 'none', nil},
		Comment =  { c.vscGreen, nil, 'none', nil},
		Constant = { c.vscBlue, nil, 'none', nil},
		String = { c.vscOrange, nil, 'none', nil},
		Character = { c.vscOrange, nil, 'none', nil},
		Number = { c.vscLightGreen, nil, 'none', nil},
		Boolean = { c.vscBlue, nil, 'none', nil},
		Float = { c.vscLightGreen, nil, 'none', nil},
		Identifier = { c.vscLightBlue, nil, 'none', nil},
		Function = { c.vscYellow, nil, 'none', nil},
		Statement = { c.vscPink, nil, 'none', nil},
		Conditional = { c.vscPink, nil, 'none', nil},
		Repeat = { c.vscPink, nil, 'none', nil},
		Label = { c.vscPink, nil, 'none', nil},
		Operator = { c.vscFront, nil, 'none', nil},
		Keyword = { c.vscPink, nil, 'none', nil},
		Exception = { c.vscPink, nil, 'none', nil},
		PreProc = { c.vscPink, nil, 'none', nil},
		Include = { c.vscPink, nil, 'none', nil},
		Define = { c.vscPink, nil, 'none', nil},
		Macro = { c.vscPink, nil, 'none', nil},
		Type = { c.vscBlue, nil, 'none', nil},
		StorageClass = { c.vscBlue, nil, 'none', nil},
		Structure = { c.vscBlue, nil, 'none', nil},
		Typedef = { c.vscBlue, nil, 'none', nil},
		Special = { c.vscYellowOrange, nil, 'none', nil},
		SpecialChar = { c.vscFront, nil, 'none', nil},
		Tag = { c.vscFront, nil, 'none', nil},
		Delimiter = { c.vscFront, nil, 'none', nil},
		SpecialComment = { c.vscGreen, nil, 'none', nil},
		Debug = { c.vscFront, nil, 'none', nil},
		Underlined = { c.vscNone, nil, 'underline', nil},
		Conceal =  {c.vscFront, c.vscBack,  'none', nil},
		Ignore = { c.vscFront, nil, 'none', nil},
		Error = { c.vscRed, c.vscBack, 'undercurl', c.vscRed},
		Todo = { c.vscBack, c.vscPink, 'bold', nil},
		SpellBad = { c.vscRed, c.vscBack, 'undercurl', c.vscRed},
		SpellCap = { c.vscRed, c.vscBack, 'undercurl', c.vscRed},
		SpellRare = { c.vscRed, c.vscBack, 'undercurl', c.vscRed},
		SpellLocal = { c.vscRed, c.vscBack, 'undercurl', c.vscRed},

		-- Treesitter
		TSError = { c.vscRed, nil, 'none', nil},
		TSPunctDelimiter = { c.vscFront, nil, 'none', nil},
		TSPunctBracket = { c.vscFront, nil, 'none', nil},
		TSPunctSpecial = { c.vscFront, nil, 'none', nil},
		TSConstant = { c.vscYellow, nil, 'none', nil},
		TSConstBuiltin = { c.vscBlue, nil, 'none', nil},
		TSConstMacro = { c.vscBlueGreen, nil, 'none', nil},
		TSStringRegex = { c.vscOrange, nil, 'none', nil},
		TSString = { c.vscOrange, nil, 'none', nil},
		TSStringEscape = { c.vscYellowOrange, nil, 'none', nil},
		TSCharacter = { c.vscOrange, nil, 'none', nil},
		TSNumber = { c.vscLightGreen, nil, 'none', nil},
		TSBoolean = { c.vscBlue, nil, 'none', nil},
		TSFloat = { c.vscLightGreen, nil, 'none', nil},
		TSAnnotation = { c.vscYellow, nil, 'none', nil},
		TSAttribute = { c.vscBlueGreen, nil, 'none', nil},
		TSNamespace = { c.vscBlueGreen, nil, 'none', nil},
		TSFuncBuiltin = { c.vscYellow, nil, 'none', nil},
		TSFunction = { c.vscYellow, nil, 'none', nil},
		TSFuncMacro = { c.vscYellow, nil, 'none', nil},
		TSParameter = { c.vscLightBlue, nil, 'none', nil},
		TSParameterReference = { c.vscLightBlue, nil, 'none', nil},
		TSMethod = { c.vscYellow, nil, 'none', nil},
		TSField = { c.vscLightBlue, nil, 'none', nil},
		TSProperty = { c.vscLightBlue, nil, 'none', nil},
		TSConstructor = { c.vscBlueGreen, nil, 'none', nil},
		TSConditional = { c.vscPink, nil, 'none', nil},
		TSRepeat = { c.vscPink, nil, 'none', nil},
		TSLabel = { c.vscLightBlue, nil, 'none', nil},
		TSKeyword = { c.vscBlue, nil, 'none', nil},
		TSKeywordFunction = { c.vscPink, nil, 'none', nil},
		TSKeywordOperator = { c.vscBlue, nil, 'none', nil},
		TSOperator = { c.vscFront, nil, 'none', nil},
		TSException = { c.vscPink, nil, 'none', nil},
		TSType = { c.vscBlueGreen, nil, 'none', nil},
		TSTypeBuiltin = { c.vscBlue, nil, 'none', nil},
		TSStructure = { c.vscLightBlue, nil, 'none', nil},
		TSInclude = { c.vscPink, nil, 'none', nil},
		TSVariable = { c.vscLightBlue, nil, 'none', nil},
		TSVariableBuiltin = { c.vscLightBlue, nil, 'none', nil},
		TSText = { c.vscYellowOrange, nil, 'none', nil},
		TSStrong = { c.vscYellowOrange, nil, 'none', nil},
		TSEmphasis = { c.vscYellowOrange, nil, 'none', nil},
		TSUnderline = { c.vscYellowOrange, nil, 'none', nil},
		TSTitle = { c.vscYellowOrange, nil, 'none', nil},
		TSLiteral = { c.vscYellowOrange, nil, 'none', nil},
		TSURI = { c.vscYellowOrange, nil, 'none', nil},
		TSTag = { c.vscBlue, nil, 'none', nil},
		TSTagDelimiter = { c.vscGray, nil, 'none', nil},

		-- Markdown
		markdownBold = { c.vscBlue, nil, 'bold', nil},
		markdownCode = { c.vscOrange, nil, 'none', nil},
		markdownRule = { c.vscBlue, nil, 'bold', nil},
		markdownCodeDelimiter = { c.vscOrange, nil, 'none', nil},
		markdownHeadingDelimiter = { c.vscBlue, nil, 'none', nil},
		markdownFootnote = { c.vscOrange, nil, 'none', nil},
		markdownFootnoteDefinition = { c.vscOrange, nil, 'none', nil},
		markdownUrl = { c.vscLightBlue, nil, 'underline', nil},
		markdownLinkText = { c.vscOrange, nil, 'none', nil},
		markdownEscape = { c.vscYellowOrange, nil, 'none', nil},

		-- JSON
		jsonKeyword = { c.vscLightBlue, nil, 'none', nil},
		jsonEscape = { c.vscYellowOrange, nil, 'none', nil},
		jsonNull = { c.vscBlue, nil, 'none', nil},
		jsonBoolean = { c.vscBlue, nil, 'none', nil},

		-- HTML
		htmlTag = { c.vscGray, nil, 'none', nil},
		htmlEndTag = { c.vscGray, nil, 'none', nil},
		htmlTagName = { c.vscBlue, nil, 'none', nil},
		htmlSpecialTagName = { c.vscBlue, nil, 'none', nil},
		htmlArg = { c.vscLightBlue, nil, 'none', nil},

		-- PHP
		phpStaticClasses = { c.vscBlueGreen, nil, 'none', nil},
		phpMethod = { c.vscYellow, nil, 'none', nil},
		phpClass = { c.vscBlueGreen, nil, 'none', nil},
		phpFunction = { c.vscYellow, nil, 'none', nil},
		phpInclude = { c.vscBlue, nil, 'none', nil},
		phpUseClass = { c.vscBlueGreen, nil, 'none', nil},
		phpRegion = { c.vscBlueGreen, nil, 'none', nil},
		phpMethodsVar = { c.vscLightBlue, nil, 'none', nil},

		-- CSS
		cssBraces = { c.vscFront, nil, 'none', nil},
		cssInclude = { c.vscPink, nil, 'none', nil},
		cssTagName = { c.vscYellowOrange, nil, 'none', nil},
		cssClassName = { c.vscYellowOrange, nil, 'none', nil},
		cssPseudoClass = { c.vscYellowOrange, nil, 'none', nil},
		cssPseudoClassId = { c.vscYellowOrange, nil, 'none', nil},
		cssPseudoClassLang = { c.vscYellowOrange, nil, 'none', nil},
		cssIdentifier = { c.vscYellowOrange, nil, 'none', nil},
		cssProp = { c.vscLightBlue, nil, 'none', nil},
		cssDefinition = { c.vscLightBlue, nil, 'none', nil},
		cssAttr = { c.vscOrange, nil, 'none', nil},
		cssAttrRegion = { c.vscOrange, nil, 'none', nil},
		cssColor = { c.vscOrange, nil, 'none', nil},
		cssFunction = { c.vscOrange, nil, 'none', nil},
		cssFunctionName = { c.vscOrange, nil, 'none', nil},
		cssVendor = { c.vscOrange, nil, 'none', nil},
		cssValueNumber = { c.vscOrange, nil, 'none', nil},
		cssValueLength = { c.vscOrange, nil, 'none', nil},
		cssUnitDecorators = { c.vscOrange, nil, 'none', nil},
		cssStyle = { c.vscLightBlue, nil, 'none', nil},
		cssImportant = { c.vscBlue, nil, 'none', nil},

		-- JavaScript
		jsVariableDef = { c.vscLightBlue, nil, 'none', nil},
		jsFuncArgs = { c.vscLightBlue, nil, 'none', nil},
		jsFuncBlock = { c.vscLightBlue, nil, 'none', nil},
		jsRegexpString = { c.vscLightRed, nil, 'none', nil},
		jsThis = { c.vscBlue, nil, 'none', nil},
		jsOperatorKeyword = { c.vscBlue, nil, 'none', nil},
		jsDestructuringBlock = { c.vscLightBlue, nil, 'none', nil},
		jsObjectKey = { c.vscLightBlue, nil, 'none', nil},
		jsGlobalObjects = { c.vscBlueGreen, nil, 'none', nil},
		jsModuleKeyword = { c.vscLightBlue, nil, 'none', nil},
		jsClassDefinition = { c.vscBlueGreen, nil, 'none', nil},
		jsClassKeyword = { c.vscBlue, nil, 'none', nil},
		jsExtendsKeyword = { c.vscBlue, nil, 'none', nil},
		jsExportDefault = { c.vscPink, nil, 'none', nil},
		jsFuncCall = { c.vscYellow, nil, 'none', nil},
		jsObjectValue = { c.vscLightBlue, nil, 'none', nil},
		jsParen = { c.vscLightBlue, nil, 'none', nil},
		jsObjectProp = { c.vscLightBlue, nil, 'none', nil},
		jsIfElseBlock = { c.vscLightBlue, nil, 'none', nil},
		jsParenIfElse = { c.vscLightBlue, nil, 'none', nil},
		jsSpreadOperator = { c.vscLightBlue, nil, 'none', nil},
		jsSpreadExpression = { c.vscLightBlue, nil, 'none', nil},

		-- Typescript
		typescriptLabel = { c.vscLightBlue, nil, 'none', nil},
		typescriptExceptions = { c.vscLightBlue, nil, 'none', nil},
		typescriptBraces = { c.vscFront, nil, 'none', nil},
		typescriptEndColons = { c.vscLightBlue, nil, 'none', nil},
		typescriptParens = { c.vscFront, nil, 'none', nil},
		typescriptDocTags = { c.vscBlue, nil, 'none', nil},
		typescriptDocComment = { c.vscBlueGreen, nil, 'none', nil},
		typescriptLogicSymbols = { c.vscLightBlue, nil, 'none', nil},
		typescriptImport = { c.vscPink, nil, 'none', nil},
		typescriptBOM = { c.vscLightBlue, nil, 'none', nil},
		typescriptVariableDeclaration = { c.vscLightBlue, nil, 'none', nil},
		typescriptVariable = { c.vscBlue, nil, 'none', nil},
		typescriptExport = { c.vscPink, nil, 'none', nil},
		typescriptAliasDeclaration = { c.vscBlueGreen, nil, 'none', nil},
		typescriptAliasKeyword = { c.vscBlue, nil, 'none', nil},
		typescriptClassName = { c.vscBlueGreen, nil, 'none', nil},
		typescriptAccessibilityModifier = { c.vscBlue, nil, 'none', nil},
		typescriptOperator = { c.vscBlue, nil, 'none', nil},
		typescriptArrowFunc = { c.vscBlue, nil, 'none', nil},
		typescriptMethodAccessor = { c.vscBlue, nil, 'none', nil},
		typescriptMember = { c.vscYellow, nil, 'none', nil},
		typescriptTypeReference = { c.vscBlueGreen, nil, 'none', nil},
		typescriptTemplateSB = { c.vscYellowOrange, nil, 'none', nil},
		typescriptArrowFuncArg = { c.vscLightBlue, nil, 'none', nil},
		typescriptParamImpl = { c.vscLightBlue, nil, 'none', nil},
		typescriptFuncComma = { c.vscLightBlue, nil, 'none', nil},
		typescriptCastKeyword = { c.vscLightBlue, nil, 'none', nil},
		typescriptCall = { c.vscBlue, nil, 'none', nil},
		typescriptCase = { c.vscLightBlue, nil, 'none', nil},
		typescriptReserved = { c.vscPink, nil, 'none', nil},
		typescriptDefault = { c.vscLightBlue, nil, 'none', nil},
		typescriptDecorator = { c.vscYellow, nil, 'none', nil},
		typescriptPredefinedType = { c.vscBlueGreen, nil, 'none', nil},
		typescriptClassHeritage = { c.vscBlueGreen, nil, 'none', nil},
		typescriptClassExtends = { c.vscBlue, nil, 'none', nil},
		typescriptClassKeyword = { c.vscBlue, nil, 'none', nil},
		typescriptBlock = { c.vscLightBlue, nil, 'none', nil},
		typescriptDOMDocProp = { c.vscLightBlue, nil, 'none', nil},
		typescriptTemplateSubstitution = { c.vscLightBlue, nil, 'none', nil},
		typescriptClassBlock = { c.vscLightBlue, nil, 'none', nil},
		typescriptFuncCallArg = { c.vscLightBlue, nil, 'none', nil},
		typescriptIndexExpr = { c.vscLightBlue, nil, 'none', nil},
		typescriptConditionalParen = { c.vscLightBlue, nil, 'none', nil},
		typescriptArray = { c.vscYellow, nil, 'none', nil},
		typescriptES6SetProp = { c.vscLightBlue, nil, 'none', nil},
		typescriptObjectLiteral = { c.vscLightBlue, nil, 'none', nil},
		typescriptTypeParameter = { c.vscBlueGreen, nil, 'none', nil},
		typescriptEnumKeyword = { c.vscBlue, nil, 'none', nil},
		typescriptEnum = { c.vscBlueGreen, nil, 'none', nil},
		typescriptLoopParen = { c.vscLightBlue, nil, 'none', nil},
		typescriptParenExp = { c.vscLightBlue, nil, 'none', nil},
		typescriptModule = { c.vscLightBlue, nil, 'none', nil},
		typescriptAmbientDeclaration = { c.vscBlue, nil, 'none', nil},
		typescriptFuncTypeArrow = { c.vscBlue, nil, 'none', nil},
		typescriptInterfaceHeritage = { c.vscBlueGreen, nil, 'none', nil},
		typescriptInterfaceName = { c.vscBlueGreen, nil, 'none', nil},
		typescriptInterfaceKeyword = { c.vscBlue, nil, 'none', nil},
		typescriptInterfaceExtends = { c.vscBlue, nil, 'none', nil},
		typescriptGlobal = { c.vscBlueGreen, nil, 'none', nil},
		typescriptAsyncFuncKeyword = { c.vscBlue, nil, 'none', nil},
		typescriptFuncKeyword = { c.vscBlue, nil, 'none', nil},
		typescriptGlobalMethod = { c.vscYellow, nil, 'none', nil},
		typescriptPromiseMethod = { c.vscYellow, nil, 'none', nil},

		-- XML
		xmlTag = { c.vscBlueGreen, nil, 'none', nil},
		xmlTagName = { c.vscBlueGreen, nil, 'none', nil},
		xmlEndTag = { c.vscBlueGreen, nil, 'none', nil},

		-- Ruby
		rubyClassNameTag = { c.vscBlueGreen, nil, 'none', nil},
		rubyClassName = { c.vscBlueGreen, nil, 'none', nil},
		rubyModuleName = { c.vscBlueGreen, nil, 'none', nil},
		rubyConstant = { c.vscBlueGreen, nil, 'none', nil},

		-- Golang
		goPackage = { c.vscBlue, nil, 'none', nil},
		goImport = { c.vscBlue, nil, 'none', nil},
		goVar = { c.vscBlue, nil, 'none', nil},
		goConst = { c.vscBlue, nil, 'none', nil},
		goStatement = { c.vscPink, nil, 'none', nil},
		goType = { c.vscBlueGreen, nil, 'none', nil},
		goSignedInts = { c.vscBlueGreen, nil, 'none', nil},
		goUnsignedInts = { c.vscBlueGreen, nil, 'none', nil},
		goFloats = { c.vscBlueGreen, nil, 'none', nil},
		goComplexes = { c.vscBlueGreen, nil, 'none', nil},
		goBuiltins = { c.vscYellow, nil, 'none', nil},
		goBoolean = { c.vscBlue, nil, 'none', nil},
		goPredefinedIdentifiers = { c.vscBlue, nil, 'none', nil},
		goTodo = { c.vscGreen, nil, 'none', nil},
		goDeclaration = { c.vscBlue, nil, 'none', nil},
		goDeclType = { c.vscBlue, nil, 'none', nil},
		goTypeDecl = { c.vscBlue, nil, 'none', nil},
		goTypeName = { c.vscBlueGreen, nil, 'none', nil},
		goVarAssign = { c.vscLightBlue, nil, 'none', nil},
		goVarDefs = { c.vscLightBlue, nil, 'none', nil},
		goReceiver = { c.vscFront, nil, 'none', nil},
		goReceiverType = { c.vscFront, nil, 'none', nil},
		goFunctionCall = { c.vscYellow, nil, 'none', nil},
		goMethodCall = { c.vscYellow, nil, 'none', nil},
		goSingleDecl = { c.vscLightBlue, nil, 'none', nil},
		-- Python
		pythonStatement = { c.vscBlue, nil, 'none', nil},
		pythonOperator = { c.vscBlue, nil, 'none', nil},
		pythonException = { c.vscPink, nil, 'none', nil},
		pythonExClass = { c.vscBlueGreen, nil, 'none', nil},
		pythonBuiltinObj = { c.vscLightBlue, nil, 'none', nil},
		pythonBuiltinType = { c.vscBlueGreen, nil, 'none', nil},
		pythonBoolean = { c.vscBlue, nil, 'none', nil},
		pythonNone = { c.vscBlue, nil, 'none', nil},
		pythonTodo = { c.vscBlue, nil, 'none', nil},
		pythonClassVar = { c.vscBlue, nil, 'none', nil},
		pythonClassDef = { c.vscBlueGreen, nil, 'none', nil},
		-- TeX
		texStatement = { c.vscBlue, nil, 'none', nil},
		texBeginEnd = { c.vscYellow, nil, 'none', nil},
		texBeginEndName = { c.vscLightBlue, nil, 'none', nil},
		texOption = { c.vscLightBlue, nil, 'none', nil},
		texBeginEndModifier = { c.vscLightBlue, nil, 'none', nil},
		texDocType = { c.vscPink, nil, 'none', nil},
		texDocTypeArgs = { c.vscLightBlue, nil, 'none', nil},

		-- Git
		gitcommitHeader = { c.vscGray, nil, 'none', nil},
		gitcommitOnBranch = { c.vscGray, nil, 'none', nil},
		gitcommitBranch = { c.vscPink, nil, 'none', nil},
		gitcommitComment = { c.vscGray, nil, 'none', nil},
		gitcommitSelectedType = { c.vscGreen, nil, 'none', nil},
		gitcommitSelectedFile = { c.vscGreen, nil, 'none', nil},
		gitcommitDiscardedType = { c.vscRed, nil, 'none', nil},
		gitcommitDiscardedFile = { c.vscRed, nil, 'none', nil},
		gitcommitOverflow = { c.vscRed, nil, 'none', nil},
		gitcommitSummary = { c.vscPink, nil, 'none', nil},
		gitcommitBlank = { c.vscPink, nil, 'none', nil},

		-- Lua
		luaFuncCall = { c.vscYellow, nil, 'none', nil},
		luaFuncArgName = { c.vscLightBlue, nil, 'none', nil},
		luaFuncKeyword = { c.vscPink, nil, 'none', nil},
		luaLocal = { c.vscPink, nil, 'none', nil},
		luaBuiltIn = { c.vscBlue, nil, 'none', nil},

		-- SH
		shDeref = { c.vscLightBlue, nil, 'none', nil},
		shVariable = { c.vscLightBlue, nil, 'none', nil},

		-- SQL
		sqlKeyword = { c.vscPink, nil, 'none', nil},
		sqlFunction = { c.vscYellowOrange, nil, 'none', nil},
		sqlOperator = { c.vscPink, nil, 'none', nil},

		-- YAML
		yamlKey = { c.vscBlue, nil, 'none', nil},
		yamlConstant = { c.vscBlue, nil, 'none', nil},

		-- Gitgutter
		GitGutterAdd = { c.vscGreen, nil, 'none', nil},
		GitGutterChange = { c.vscYellow, nil, 'none', nil},
		GitGutterDelete = { c.vscRed, nil, 'none', nil},

		-- Git Signs
		GitSignsAdd = { c.vscGreen, nil, 'none', nil},
		GitSignsChange = { c.vscYellow, nil, 'none', nil},
		GitSignsDelete = { c.vscRed, nil, 'none', nil},
		GitSignsAddLn = { c.vscBack, c.vscGreen, 'none', nil},
		GitSignsChangeLn = { c.vscBack, c.vscYellow, 'none', nil},
		GitSignsDeleteLn = { c.vscBack, c.vscRed, 'none', nil},

		-- NvimTree
		NvimTreeRootFolder = { c.vscFront, nil, 'bold', nil},
		NvimTreeGitDirty = { c.vscYellow, nil, 'none', nil},
		NvimTreeGitNew = { c.vscGreen, nil, 'none', nil},
		NvimTreeImageFile = { c.vscViolet, nil, 'none', nil},
		NvimTreeEmptyFolderName = { c.vscGray, nil, 'none', nil},
		NvimTreeFolderName = { c.vscFront, nil, 'none', nil},
		NvimTreeSpecialFile = { c.vscPink, nil, 'underline', nil},
		NvimTreeNormal  = { c.vscFront, c.vscLeftDark, 'none', nil},
		NvimTreeCursorLine = { nil, c.vscLeftMid, 'none', nil},
		NvimTreeVertSplit = { c.vscBack, c.vscBack, 'none', nil},
		NvimTreeEndOfBuffer = { c.vscLeftDark, nil, 'none', nil},
		NvimTreeOpenedFolderName = { nil, c.vscLeftDark, 'none', nil},

		-- Bufferline
		BufferLineIndicatorSelected = { c.vscLeftDark , nil, 'none', nil},
		BufferLineFill = { nil , c.vscLeftDark, 'none', nil},

		-- IndentBlankLine
		IndentBlanklineContextChar = { c.vscRed, nil, "nocombine", nil},

		-- LSP
		LspDiagnosticsDefaultError = { c.vscRed, nil, 'none', nil},
		LspDiagnosticsDefaultWarning = { c.vscYellow, nil, 'none', nil},
		LspDiagnosticsDefaultInformation = { c.vscBlue, nil, 'none', nil},
		LspDiagnosticsDefaultHint = { c.vscBlue, nil, 'none', nil},
		LspDiagnosticsUnderlineError = { c.vscRed, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineWarning = { c.vscYellow, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineInformation = { c.vscBlue, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineHint = { c.vscBlue, nil, 'undercurl', nil},
		LspReferenceText = { c.vscYellowOrange, nil, 'none', nil},
		LspReferenceRead = { c.vscYellowOrange, nil, 'none', nil},
		LspReferenceWrite = { c.vscYellowOrange, nil, 'none', nil},
	}

	if vim.g.vscode_style == "dark" then
		syntax.NvimTreeFolderIcon = { c.vscBlue, nil, 'none', nil}
		syntax.NvimTreeIndentMarker = { c.vscLineNumber, nil, 'none', nil}
		syntax.IndentBlanklineChar = { c.vscLineNumber, nil, "nocombine", nil}
		syntax.IndentBlanklineSpaceChar = { c.vscLineNumber, nil, "nocombine", nil}

		syntax.LspFloatWinNormal = { c.vscFront, nil, 'none', nil}
		syntax.LspFloatWinBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspSagaHoverBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspSagaSignatureHelpBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspSagaCodeActionBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspSagaDefPreviewBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspLinesDiagBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspSagaRenameBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.LspSagaBorderTitle = { c.vscCursorDark, nil, 'none', nil}

		syntax.TelescopePromptBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.TelescopeResultsBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.TelescopePreviewBorder = { c.vscLineNumber, nil, 'none', nil}
		syntax.TelescopeNormal = {c.vscFront, nil, 'none', nil}
		syntax.TelescopeSelection = {c.vscFront, c.vscUiBlue, 'none', nil}
		syntax.TelescopeMultiSelection = {c.vscFront, c.vscUiBlue, 'none', nil}
		syntax.TelescopeMatching = {c.vscBlue, nil, 'none', nil}
		syntax.TelescopePromptPrefix = {c.vscFront, nil, 'none', nil}
	else
		syntax.NvimTreeFolderIcon = { c.vscDarkBlue, nil, 'none', nil}
		syntax.NvimTreeIndentMarker = { c.vscTabOther, nil, 'none', nil}
		syntax.IndentBlanklineChar = { c.vscTabOther, nil, "nocombine", nil}
		syntax.IndentBlanklineSpaceChar = { c.vscTabOther, nil, "nocombine", nil}

		syntax.LspFloatWinNormal = { c.vscFront, nil, 'none', nil}
		syntax.LspFloatWinBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspSagaHoverBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspSagaSignatureHelpBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspSagaCodeActionBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspSagaDefPreviewBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspLinesDiagBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspSagaRenameBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.LspSagaBorderTitle = { c.vscCursorDark, nil, 'none', nil}

		syntax.TelescopePromptBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.TelescopeResultsBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.TelescopePreviewBorder = { c.vscTabOther, nil, 'none', nil}
		syntax.TelescopeNormal = {c.vscFront, nil, 'none', nil}
		syntax.TelescopeSelection = {c.vscBack, c.vscLightBlue, 'none', nil}
		syntax.TelescopeMultiSelection = {c.vscBack, c.vscLightBlue, 'none', nil}
		syntax.TelescopeMatching = {c.vscDarkBlue, nil, 'none', nil}
		syntax.TelescopePromptPrefix = {c.vscFront, nil, 'none', nil}
	end

	return syntax
end

theme.link_highlight = function ()
	-- Legacy groups for official git.vim and diff.vim syntax
	vim.api.nvim_command("hi! link diffAdded DiffAdd")
	vim.api.nvim_command("hi! link diffChanged DiffChange")
	vim.api.nvim_command("hi! link diffRemoved DiffDelete")
	-- Nvim compe
	vim.api.nvim_command("highlight! link CompeDocumentation Pmenu")
end

return theme

