-- cabal install alex
-- alex Token.x


{
{-# OPTIONS_GHC -w #-}
module Parser.Token (Token(..),scanTokens) where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$eol   = [\n]

tokens :-

  $eol                          ;
  $white+                       ;
  "%".*                         ;
  int 				{ \s -> TokenTint             }   
  "#t"                          { \s -> TokenTrue             }  
  "rule"                        { \s -> TokenRule             }
  "=>"                          { \s -> TokenImplies          }
  ":"                           { \s -> TokenType             } 
  ";"                           { \s -> TokenSemicolon        }
  "."                           { \s -> TokenDot              }
  "->"                          { \s -> TokenArrow            }   
  "#f"                          { \s -> TokenFalse            }  
  bool 				{ \s -> TokenTbool            }   
  \\                            { \s -> TokenLambda           }
  [\+\-\*\<\>\/] | "=="         { \s -> TokenOp s             }
  \(                            { \s -> TokenLParen           }
  \)                            { \s -> TokenRParen           } 
  $alpha [$alpha $digit \_ \']* { \s -> TokenSym s            }
  $digit+                       { \s -> TokenInt (read s)     }   
  "["                           { \s -> TokenSquareBrackLeft  }
  "]"                           { \s -> TokenSquareBrackRight } 


{

data Token = 
     	   TokenTint
           | TokenDot
	   | TokenTbool
	   | TokenTrue
	   | TokenRule
	   | TokenImplies
	   | TokenFalse
           | TokenSemicolon
           | TokenType
	   | TokenSym String
           | TokenOp String
	   | TokenInt Int
	   | TokenLambda
	   | TokenArrow
     	   | TokenLParen
           | TokenRParen
    	   | TokenSquareBrackLeft
           | TokenSquareBrackRight
           deriving (Eq,Show)

scanTokens = alexScanTokens

}
