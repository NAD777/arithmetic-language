//
//  AST+Eval.swift
//
//
//  Created by Антон Нехаев on 31.08.2024.
//

import Foundation

class Context {
  private static var _shared = Context()
  static var shared: Context {
    return _shared
  }

  private var variables: [String: Int] = [:]

  private init() { }

  func add(name: String, value: Int) {
    variables[name] = value
  }

  func get(by name: String) -> Int? {
    variables[name]
  }
}

extension Program {
  var eval: String {
    statements.map(\.eval).joined(separator: "\n")
  }
}

extension Stat {
  var eval: String {
    switch self {
    case .assign(id: let id, expr: let expr):
      Context.shared.add(name: id, value: expr.eval)
      return ""
    case .print(expr: let expr):
      return "\(expr.eval)"
    }
  }
}

extension Expr {
  var eval: Int {
    switch self {
    case .int(let value): return value
    case .id(let name):
      guard let value = Context.shared.get(by: name) else {
        assertionFailure("Variable not set")
        return 0
      }
      return value
    case .add(let lhs, let rhs): return lhs.eval + rhs.eval
    case .sub(let lhs, let rhs): return lhs.eval - rhs.eval
    case .mul(let lhs, let rhs): return lhs.eval * rhs.eval
    case .div(let lhs, let rhs): return lhs.eval / rhs.eval
    case .parens(let expr): return expr.eval
    }
  }
}
