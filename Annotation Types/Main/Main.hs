import Parser.Parser
import Main.Expr
import System.Environment
import Debug.Trace

lolly s = 
      let ast =  (parseExpr s) in
         do  --print (show ast);
             print (fst3 (check [] [] ast))

 
main = do
     [f]   <- getArgs
     s     <- readFile f
     lolly s


