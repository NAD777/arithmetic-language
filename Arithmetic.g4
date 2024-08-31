grammar Arithmetic;

program:    stat+ ;
stat:    expr NEWLINE                # printExpr
       | ID '=' expr NEWLINE         # assign
       ;
expr:    expr '*' expr               # Mul
       | expr '/' expr               # Div
       | expr '+' expr               # Add
       | expr '-' expr               # Sub
       | INT                         # int
       | ID                          # id
       | '(' expr ')'                # parens
       ;
ID  : [a-zA-Z]+ ; // match identifiers
INT : [\-]?[0-9]+ ;    // match integers
NEWLINE : EOF ;
WS  : [ \t]+ -> skip ;