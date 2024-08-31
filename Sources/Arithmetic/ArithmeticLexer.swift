// Generated from Arithmetic.g4 by ANTLR 4.13.2
import Antlr4

open class ArithmeticLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ArithmeticLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(ArithmeticLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, ID=8, 
            INT=9, NEWLINE=10, WS=11

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "ID", "INT", "NEWLINE", 
		"WS"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'='", "'*'", "'/'", "'+'", "'-'", "'('", "')'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, "ID", "INT", "NEWLINE", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return ArithmeticLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, ArithmeticLexer._ATN, ArithmeticLexer._decisionToDFA, ArithmeticLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Arithmetic.g4" }

	override open
	func getRuleNames() -> [String] { return ArithmeticLexer.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return ArithmeticLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return ArithmeticLexer.channelNames }

	override open
	func getModeNames() -> [String] { return ArithmeticLexer.modeNames }

	override open
	func getATN() -> ATN { return ArithmeticLexer._ATN }

	static let _serializedATN:[Int] = [
		4,0,11,62,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
		2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,1,0,1,0,1,1,1,1,1,2,1,2,1,3,1,3,1,4,
		1,4,1,5,1,5,1,6,1,6,1,7,4,7,39,8,7,11,7,12,7,40,1,8,3,8,44,8,8,1,8,4,8,
		47,8,8,11,8,12,8,48,1,9,4,9,52,8,9,11,9,12,9,53,1,10,4,10,57,8,10,11,10,
		12,10,58,1,10,1,10,0,0,11,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,
		21,11,1,0,5,2,0,65,90,97,122,1,0,45,45,1,0,48,57,2,0,10,10,13,13,2,0,9,
		9,32,32,66,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,
		0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,
		1,0,0,0,1,23,1,0,0,0,3,25,1,0,0,0,5,27,1,0,0,0,7,29,1,0,0,0,9,31,1,0,0,
		0,11,33,1,0,0,0,13,35,1,0,0,0,15,38,1,0,0,0,17,43,1,0,0,0,19,51,1,0,0,
		0,21,56,1,0,0,0,23,24,5,61,0,0,24,2,1,0,0,0,25,26,5,42,0,0,26,4,1,0,0,
		0,27,28,5,47,0,0,28,6,1,0,0,0,29,30,5,43,0,0,30,8,1,0,0,0,31,32,5,45,0,
		0,32,10,1,0,0,0,33,34,5,40,0,0,34,12,1,0,0,0,35,36,5,41,0,0,36,14,1,0,
		0,0,37,39,7,0,0,0,38,37,1,0,0,0,39,40,1,0,0,0,40,38,1,0,0,0,40,41,1,0,
		0,0,41,16,1,0,0,0,42,44,7,1,0,0,43,42,1,0,0,0,43,44,1,0,0,0,44,46,1,0,
		0,0,45,47,7,2,0,0,46,45,1,0,0,0,47,48,1,0,0,0,48,46,1,0,0,0,48,49,1,0,
		0,0,49,18,1,0,0,0,50,52,7,3,0,0,51,50,1,0,0,0,52,53,1,0,0,0,53,51,1,0,
		0,0,53,54,1,0,0,0,54,20,1,0,0,0,55,57,7,4,0,0,56,55,1,0,0,0,57,58,1,0,
		0,0,58,56,1,0,0,0,58,59,1,0,0,0,59,60,1,0,0,0,60,61,6,10,0,0,61,22,1,0,
		0,0,6,0,40,43,48,53,58,1,6,0,0
	]

	public
	static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}