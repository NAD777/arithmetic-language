// Generated from Arithmetic.g4 by ANTLR 4.13.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ArithmeticParser}.
 */
public protocol ArithmeticListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ArithmeticParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProgram(_ ctx: ArithmeticParser.ProgramContext)
	/**
	 * Exit a parse tree produced by {@link ArithmeticParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProgram(_ ctx: ArithmeticParser.ProgramContext)
	/**
	 * Enter a parse tree produced by the {@code printExpr}
	 * labeled alternative in {@link ArithmeticParser#stat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrintExpr(_ ctx: ArithmeticParser.PrintExprContext)
	/**
	 * Exit a parse tree produced by the {@code printExpr}
	 * labeled alternative in {@link ArithmeticParser#stat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrintExpr(_ ctx: ArithmeticParser.PrintExprContext)
	/**
	 * Enter a parse tree produced by the {@code assign}
	 * labeled alternative in {@link ArithmeticParser#stat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssign(_ ctx: ArithmeticParser.AssignContext)
	/**
	 * Exit a parse tree produced by the {@code assign}
	 * labeled alternative in {@link ArithmeticParser#stat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssign(_ ctx: ArithmeticParser.AssignContext)
	/**
	 * Enter a parse tree produced by the {@code Div}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDiv(_ ctx: ArithmeticParser.DivContext)
	/**
	 * Exit a parse tree produced by the {@code Div}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDiv(_ ctx: ArithmeticParser.DivContext)
	/**
	 * Enter a parse tree produced by the {@code Add}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAdd(_ ctx: ArithmeticParser.AddContext)
	/**
	 * Exit a parse tree produced by the {@code Add}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAdd(_ ctx: ArithmeticParser.AddContext)
	/**
	 * Enter a parse tree produced by the {@code Sub}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSub(_ ctx: ArithmeticParser.SubContext)
	/**
	 * Exit a parse tree produced by the {@code Sub}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSub(_ ctx: ArithmeticParser.SubContext)
	/**
	 * Enter a parse tree produced by the {@code parens}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParens(_ ctx: ArithmeticParser.ParensContext)
	/**
	 * Exit a parse tree produced by the {@code parens}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParens(_ ctx: ArithmeticParser.ParensContext)
	/**
	 * Enter a parse tree produced by the {@code Mul}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMul(_ ctx: ArithmeticParser.MulContext)
	/**
	 * Exit a parse tree produced by the {@code Mul}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMul(_ ctx: ArithmeticParser.MulContext)
	/**
	 * Enter a parse tree produced by the {@code id}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterId(_ ctx: ArithmeticParser.IdContext)
	/**
	 * Exit a parse tree produced by the {@code id}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitId(_ ctx: ArithmeticParser.IdContext)
	/**
	 * Enter a parse tree produced by the {@code int}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInt(_ ctx: ArithmeticParser.IntContext)
	/**
	 * Exit a parse tree produced by the {@code int}
	 * labeled alternative in {@link ArithmeticParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInt(_ ctx: ArithmeticParser.IntContext)
}