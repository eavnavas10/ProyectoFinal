grammar Expr;
prog:   (expr  NEWLINE )* ;
expr:   expr op=(MULT|DIV) expr { Console.WriteLine("Token Encontrado:" + $op.text); } 
    |   expr op=(SUM|RES) expr {Console.WriteLine("Token Encontrado:" + $op.text);}
    |   INT                 {Console.WriteLine("Token Encontrado:" + $INT.text);}
    |   REAL                {Console.WriteLine("Token Encontrado:"+ $REAL.text);}
    |   PARI expr PARD     {Console.WriteLine("Token Encontrado:" + $PARI.text );}  {Console.WriteLine("Token Encontrado:" + $PARD.text );}  
    ;


MULT : '*';
DIV : '/';
SUM: '+';
RES: '-';
PARI: '(';
PARD: ')';
NEWLINE : [\r\n]+ ;
INT     : '-'?[0-9]+ ;
REAL : '-'?INT'.'INT;

