--- cabal install happy
--- happy Parser.y 

{
module Parser.Parser where
import Parser.Token
import Main.Expr
}

%name expr
%tokentype { Token }
%error { parseError }

%token
    intT     { TokenTint             }
    boolT    { TokenTbool            }
    var      { TokenSym $$           }
    '.'      { TokenDot              }
    '\\'     { TokenLambda           }
    '('      { TokenLParen           }
    ')'      { TokenRParen           }
    op       { TokenOp $$            }
    ':'      { TokenType             }
    ';'      { TokenSemicolon        }
    '=>'     { TokenImplies          }
    'rule'   { TokenRule             }
    '->'     { TokenArrow            }
    '['      { TokenSquareBrackLeft  } 
    ']'      { TokenSquareBrackRight }
    type     { TokenType             }
    int      { TokenInt $$           }
    'succ'   { TokenSucc             }
    'pred'   { TokenPred             }
    'isZero' { TokenZero             }
 
%left '+' '-'
%left '*' '/'

%%

Expr :   int '[' var ']' {  (EInt $1 $3) }
     |   '\\' var ':' Types '.' Expr
     {  (Lam $2 $4 $6) }
     | var 
     { Var $1 }
     | Expr ';' Expr
     { Begin $1 $3 }
     | Expr op Expr
     { Binop $1 (opEnc $2) $3 }
     | '(' Expr ')'
     { $2 }
     | Expr Expr
     { App $1 $2 }
     | 'succ' Expr
     {  Succ $2 }
     | 'pred' Expr
     {  Pred $2 }
     | 'isZero' Expr
     {  Zero $2 }
     | 'rule'   '[' var ']' op  '[' var ']'  '=>' '[' var ']'
     {  (Rule $3 (opEnc $5) $7 $11) }

Types: intT 
     { TInt } 
     | boolT 
     {TBool }
     | Types '[' var ']'
     { (AnnType $1 $3) }
     | Types '->' Types 
     { (TArrow $1 $3) }


{
opEnc :: String -> Operator
opEnc "+" = Plus
opEnc "*" = Mul

parseError :: [Token] -> a
parseError _ = error "Parse error"

parseExpr :: String -> Expr
parseExpr = expr . scanTokens
}
