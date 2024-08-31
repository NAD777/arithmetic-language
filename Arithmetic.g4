grammar Arithmetic;

program:    stat+ ;
stat:    expr EOF                    # printExpr
       | ID '=' expr EOF             # assign
       ;
expr:    expr op=('*'|'/') expr     # MulDiv
       | expr op=('+'|'-') expr     # AddSub
       | INT                         # int
       | ID                          # id
       | '(' expr ')'                # parens
       ;
ID  : [a-zA-Z]+ ; // match identifiers
INT : [0-9]+ ;    // match integers
NEWLINE : [\r\n]+ ;
WS  : [ \t]+ -> skip ;