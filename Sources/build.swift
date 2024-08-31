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
    return .int(value: Int(ctx.INT()!.getText())!)
  case let ctx as ArithmeticParser.IdContext:
    return .id(name: ctx.getText())
  case let ctx as ArithmeticParser.AddSubContext:
    if ctx.op.getText() == "+" {
      return .add(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
    }
    return .sub(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
  case let ctx as ArithmeticParser.MulDivContext:
    if ctx.op.getText() == "*" {
      return .mul(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
    }
    return .div(lhs: try buidExpression(ctx: ctx.expr(0)!), rhs: try buidExpression(ctx: ctx.expr(1)!))
  case let ctx as ArithmeticParser.ParensContext:
    return .parens(expr: try buidExpression(ctx: ctx.expr()!))
  default:
    throw BuildError.UnexpectedParseContext("not an expression")
  }
}
