// Generated from Arithmetic.g4 by ANTLR 4.13.2
import Antlr4

open class ArithmeticParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ArithmeticParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(ArithmeticParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, ID = 8, INT = 9, NEWLINE = 10, WS = 11
	}

	public
	static let RULE_program = 0, RULE_stat = 1, RULE_expr = 2

	public
	static let ruleNames: [String] = [
		"program", "stat", "expr"
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
	func getGrammarFileName() -> String { return "Arithmetic.g4" }

	override open
	func getRuleNames() -> [String] { return ArithmeticParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return ArithmeticParser._serializedATN }

	override open
	func getATN() -> ATN { return ArithmeticParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return ArithmeticParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,ArithmeticParser._ATN,ArithmeticParser._decisionToDFA, ArithmeticParser._sharedContextCache)
	}


	public class ProgramContext: ParserRuleContext {
			open
			func stat() -> [StatContext] {
				return getRuleContexts(StatContext.self)
			}
			open
			func stat(_ i: Int) -> StatContext? {
				return getRuleContext(StatContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ArithmeticParser.RULE_program
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterProgram(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitProgram(self)
			}
		}
	}
	@discardableResult
	 open func program() throws -> ProgramContext {
		var _localctx: ProgramContext
		_localctx = ProgramContext(_ctx, getState())
		try enterRule(_localctx, 0, ArithmeticParser.RULE_program)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(7) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(6)
		 		try stat()


		 		setState(9); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 832) != 0))

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return ArithmeticParser.RULE_stat
		}
	}
	public class PrintExprContext: StatContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(ArithmeticParser.Tokens.EOF.rawValue, 0)
			}

		public
		init(_ ctx: StatContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterPrintExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitPrintExpr(self)
			}
		}
	}
	public class AssignContext: StatContext {
			open
			func ID() -> TerminalNode? {
				return getToken(ArithmeticParser.Tokens.ID.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(ArithmeticParser.Tokens.EOF.rawValue, 0)
			}

		public
		init(_ ctx: StatContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterAssign(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitAssign(self)
			}
		}
	}
	@discardableResult
	 open func stat() throws -> StatContext {
		var _localctx: StatContext
		_localctx = StatContext(_ctx, getState())
		try enterRule(_localctx, 2, ArithmeticParser.RULE_stat)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(19)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,1, _ctx)) {
		 	case 1:
		 		_localctx =  PrintExprContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(11)
		 		try expr(0)
		 		setState(12)
		 		try match(ArithmeticParser.Tokens.EOF.rawValue)

		 		break
		 	case 2:
		 		_localctx =  AssignContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(14)
		 		try match(ArithmeticParser.Tokens.ID.rawValue)
		 		setState(15)
		 		try match(ArithmeticParser.Tokens.T__0.rawValue)
		 		setState(16)
		 		try expr(0)
		 		setState(17)
		 		try match(ArithmeticParser.Tokens.EOF.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExprContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return ArithmeticParser.RULE_expr
		}
	}
	public class DivContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterDiv(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitDiv(self)
			}
		}
	}
	public class AddContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterAdd(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitAdd(self)
			}
		}
	}
	public class SubContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterSub(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitSub(self)
			}
		}
	}
	public class ParensContext: ExprContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterParens(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitParens(self)
			}
		}
	}
	public class MulContext: ExprContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterMul(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitMul(self)
			}
		}
	}
	public class IdContext: ExprContext {
			open
			func ID() -> TerminalNode? {
				return getToken(ArithmeticParser.Tokens.ID.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterId(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitId(self)
			}
		}
	}
	public class IntContext: ExprContext {
			open
			func INT() -> TerminalNode? {
				return getToken(ArithmeticParser.Tokens.INT.rawValue, 0)
			}

		public
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.enterInt(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ArithmeticListener {
				listener.exitInt(self)
			}
		}
	}

	 public final  func expr( ) throws -> ExprContext   {
		return try expr(0)
	}
	@discardableResult
	private func expr(_ _p: Int) throws -> ExprContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExprContext
		_localctx = ExprContext(_ctx, _parentState)
		var _prevctx: ExprContext = _localctx
		let _startState: Int = 4
		try enterRecursionRule(_localctx, 4, ArithmeticParser.RULE_expr, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(28)
			try _errHandler.sync(self)
			switch (ArithmeticParser.Tokens(rawValue: try _input.LA(1))!) {
			case .INT:
				_localctx = IntContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(22)
				try match(ArithmeticParser.Tokens.INT.rawValue)

				break

			case .ID:
				_localctx = IdContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(23)
				try match(ArithmeticParser.Tokens.ID.rawValue)

				break

			case .T__5:
				_localctx = ParensContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(24)
				try match(ArithmeticParser.Tokens.T__5.rawValue)
				setState(25)
				try expr(0)
				setState(26)
				try match(ArithmeticParser.Tokens.T__6.rawValue)

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(44)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,4,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(42)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,3, _ctx)) {
					case 1:
						_localctx = MulContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ArithmeticParser.RULE_expr)
						setState(30)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(31)
						try match(ArithmeticParser.Tokens.T__1.rawValue)
						setState(32)
						try expr(8)

						break
					case 2:
						_localctx = DivContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ArithmeticParser.RULE_expr)
						setState(33)
						if (!(precpred(_ctx, 6))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 6)"))
						}
						setState(34)
						try match(ArithmeticParser.Tokens.T__2.rawValue)
						setState(35)
						try expr(7)

						break
					case 3:
						_localctx = AddContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ArithmeticParser.RULE_expr)
						setState(36)
						if (!(precpred(_ctx, 5))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 5)"))
						}
						setState(37)
						try match(ArithmeticParser.Tokens.T__3.rawValue)
						setState(38)
						try expr(6)

						break
					case 4:
						_localctx = SubContext(  ExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ArithmeticParser.RULE_expr)
						setState(39)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(40)
						try match(ArithmeticParser.Tokens.T__4.rawValue)
						setState(41)
						try expr(5)

						break
					default: break
					}
			 
				}
				setState(46)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,4,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  2:
			return try expr_sempred(_localctx?.castdown(ExprContext.self), predIndex)
	    default: return true
		}
	}
	private func expr_sempred(_ _localctx: ExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 7)
		    case 1:return precpred(_ctx, 6)
		    case 2:return precpred(_ctx, 5)
		    case 3:return precpred(_ctx, 4)
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,11,48,2,0,7,0,2,1,7,1,2,2,7,2,1,0,4,0,8,8,0,11,0,12,0,9,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,3,1,20,8,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,29,8,
		2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,5,2,43,8,2,10,2,12,2,
		46,9,2,1,2,0,1,4,3,0,2,4,0,0,52,0,7,1,0,0,0,2,19,1,0,0,0,4,28,1,0,0,0,
		6,8,3,2,1,0,7,6,1,0,0,0,8,9,1,0,0,0,9,7,1,0,0,0,9,10,1,0,0,0,10,1,1,0,
		0,0,11,12,3,4,2,0,12,13,5,0,0,1,13,20,1,0,0,0,14,15,5,8,0,0,15,16,5,1,
		0,0,16,17,3,4,2,0,17,18,5,0,0,1,18,20,1,0,0,0,19,11,1,0,0,0,19,14,1,0,
		0,0,20,3,1,0,0,0,21,22,6,2,-1,0,22,29,5,9,0,0,23,29,5,8,0,0,24,25,5,6,
		0,0,25,26,3,4,2,0,26,27,5,7,0,0,27,29,1,0,0,0,28,21,1,0,0,0,28,23,1,0,
		0,0,28,24,1,0,0,0,29,44,1,0,0,0,30,31,10,7,0,0,31,32,5,2,0,0,32,43,3,4,
		2,8,33,34,10,6,0,0,34,35,5,3,0,0,35,43,3,4,2,7,36,37,10,5,0,0,37,38,5,
		4,0,0,38,43,3,4,2,6,39,40,10,4,0,0,40,41,5,5,0,0,41,43,3,4,2,5,42,30,1,
		0,0,0,42,33,1,0,0,0,42,36,1,0,0,0,42,39,1,0,0,0,43,46,1,0,0,0,44,42,1,
		0,0,0,44,45,1,0,0,0,45,5,1,0,0,0,46,44,1,0,0,0,5,9,19,28,42,44
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}