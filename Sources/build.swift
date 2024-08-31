//
//  build.swift
//  
//
//  Created by Антон Нехаев on 31.08.2024.
//

import Foundation
import Antlr4

public enum BuildError: Error {
    case UnexpectedParseContext(String)
}

func buildProgram(ctx: ArithmeticParser.ProgramContext) throws -> Program {
  return try Program(
    statements: ctx.stat().map(buildStatement)
  )
}

func buildStatement(ctx: ArithmeticParser.StatContext) throws -> Stat {
  switch ctx {
  case let ctx as ArithmeticParser.PrintExprContext:
    return .print(expr: try buidExpression(ctx: ctx.expr()!))
  case let ctx as ArithmeticParser.AssignContext:
    return .assign(id: ctx.ID()!.getText(), expr: try buidExpression(ctx: ctx.expr()!))
  default:
    throw BuildError.UnexpectedParseContext("not a declaration")
  }
}

func buidExpression(ctx: ArithmeticParser.ExprContext) throws -> Expr {
  switch ctx {
  case let ctx as ArithmeticParser.IntContext:
      .int(value: Int(ctx.INT()!.getText())!)
  case let ctx as ArithmeticParser.IdContext:
      .id(name: ctx.getText())
  case let ctx as ArithmeticParser.AddContext:
      .add(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
  case let ctx as ArithmeticParser.SubContext:
      .sub(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
  case let ctx as ArithmeticParser.MulContext:
      .mul(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
  case let ctx as ArithmeticParser.DivContext:
      .div(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
  case let ctx as ArithmeticParser.ParensContext:
      .parens(expr: try buidExpression(ctx: ctx.expr()!))
  default:
    throw BuildError.UnexpectedParseContext("not an expression")
  }
}
