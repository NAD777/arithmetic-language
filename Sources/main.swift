// The Swift Programming Language
// https://docs.swift.org/swift-book

import Antlr4

func main() {
  while true {
    print(">>> ", terminator: "")
    guard let line = readLine() else { break }  // Exit on EOF
    
    // Create input stream from the user input
    let input = ANTLRInputStream(line)
    
    // Initialize lexer
    let lexer = ArithmeticLexer(input)
    
    // Create a token stream from lexer
    let tokens = CommonTokenStream(lexer)
    
    // Initialize parser
    let parser = try! ArithmeticParser(tokens)
    
    // Parse the input to get the 'program' context
    let ctx = try! parser.program()
    
    let program = try! buildProgram(ctx: ctx)
    
    print("Pretty printed:", program.prettyPrinted)
    print(program.eval)
  }
}


main()
