//
//  AST+PrettyPrint.swift
//  
//
//  Created by Антон Нехаев on 31.08.2024.
//

import Foundation

extension Program {
  var prettyPrinted: String {
    statements.map(\.prettyPrinted).joined(separator: "\n")
  }
}

extension Stat {
  var prettyPrinted: String {
    switch self {
    case let .assign(id: id, expr: expr): "\(id) = \(expr.prettyPrinted)"
    case let .print(expr: expr): expr.prettyPrinted
    }
  }
}

extension Expr {
  var prettyPrinted: String {
    switch self {
    case .int(let value): "\(value)"
    case .id(let name): name
    case .add(let lhs, let rhs): "\(lhs.prettyPrinted) + \(rhs.prettyPrinted)"
    case .sub(let lhs, let rhs): "\(lhs.prettyPrinted) - \(rhs.prettyPrinted)"
    case .mul(let lhs, let rhs): "\(lhs.prettyPrinted) * \(rhs.prettyPrinted)"
    case .div(let lhs, let rhs): "\(lhs.prettyPrinted) / \(rhs.prettyPrinted)"
    case .parens(let expr): "(\(expr.prettyPrinted))"
    }
  }
}
