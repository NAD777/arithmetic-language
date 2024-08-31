//
//  AST.swift
//  
//
//  Created by Антон Нехаев on 31.08.2024.
//

import Foundation

public struct Program {
  var statements: [Stat]
}

enum Stat {
  case assign(id: String, expr: Expr)
  case print(expr: Expr)
}

indirect enum Expr {
    case int(value: Int)
    case id(name: String)
    case add(lhs: Expr, rhs: Expr)
    case sub(lhs: Expr, rhs: Expr)
    case mul(lhs: Expr, rhs: Expr)
    case div(lhs: Expr, rhs: Expr)
    case parens(expr: Expr)
}

