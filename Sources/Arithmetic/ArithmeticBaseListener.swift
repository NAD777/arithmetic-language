// Generated from Arithmetic.g4 by ANTLR 4.13.2

import Antlr4


/**
 * This class provides an empty implementation of {@link ArithmeticListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
open class ArithmeticBaseListener: ArithmeticListener {
     public init() { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterProgram(_ ctx: ArithmeticParser.ProgramContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitProgram(_ ctx: ArithmeticParser.ProgramContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrintExpr(_ ctx: ArithmeticParser.PrintExprContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrintExpr(_ ctx: ArithmeticParser.PrintExprContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAssign(_ ctx: ArithmeticParser.AssignContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAssign(_ ctx: ArithmeticParser.AssignContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDiv(_ ctx: ArithmeticParser.DivContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDiv(_ ctx: ArithmeticParser.DivContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAdd(_ ctx: ArithmeticParser.AddContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAdd(_ ctx: ArithmeticParser.AddContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSub(_ ctx: ArithmeticParser.SubContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSub(_ ctx: ArithmeticParser.SubContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterParens(_ ctx: ArithmeticParser.ParensContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitParens(_ ctx: ArithmeticParser.ParensContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMul(_ ctx: ArithmeticParser.MulContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMul(_ ctx: ArithmeticParser.MulContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterId(_ ctx: ArithmeticParser.IdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitId(_ ctx: ArithmeticParser.IdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInt(_ ctx: ArithmeticParser.IntContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInt(_ ctx: ArithmeticParser.IntContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEveryRule(_ ctx: ParserRuleContext) throws { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEveryRule(_ ctx: ParserRuleContext) throws { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitTerminal(_ node: TerminalNode) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitErrorNode(_ node: ErrorNode) { }
}