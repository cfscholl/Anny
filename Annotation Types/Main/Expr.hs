module Main.Expr  where
import Data.List
import Debug.Trace 

type Sym = String
--  e ::= b[a] | e⊕e | x | λx:t.e | e e
data Expr
    = EInt Int 
    | EBool Bool 
    | Begin Expr Expr
    | Binop Expr Operator  Expr
    | Var Sym
    | Lam Sym Type Expr
    | App Expr Expr
    | Succ Expr
    | Pred Expr
    | Zero Expr
    deriving (Show)

data Operator
     = Plus
     | Mul
    deriving (Show,Eq)

-- t ::= B[a] | t → t
data Type
     = TInt 
     | Unit
     | TBool
     | AnnType Type Sym
     | TArrow Type Type
    deriving (Eq)


instance Show Type where
         show TInt = "int"
         show Unit = "()"
         show TBool = "bool"
         show (AnnType t s) = (show t) ++ "[" ++ s ++ "]"
         show (TArrow t1 t2) = (show t1) ++ "->" ++ (show t2)


fst3(a,b,c) = a
fsta [h] = h

type Env k v = [(k, v)]
extend :: Env k v -> (k, v) -> Env k v
extend env xt = xt : env


checkNumOperation name e env renv =
   let (te,enve,renve) = check env renv e
      in
      case te of 
	TInt -> (TInt,enve,renve)
	_    -> error $  "Operation" ++  "should be applied to an integer"

check env renv (EInt _ s) = ((AnnType TInt s),env,renv)

check env renv (Var s) = 
      case (lookup s env)  of
       Just t -> (t,env, renv)
       Nothing -> error "could not find varibale s"

check env renv (Rule s1 o s2 sr) = 
       (Unit, env, (extend renv (o,(s1,s2,sr))))

check env renv (Begin e1 e2) = 
      let (_,enve1,renve1) = check env renv e1
      in
         (check enve1 renve1 e2)

check env renv (Succ e) = checkNumOperation "succ" e env renv 
check env renv (Pred e) = checkNumOperation "pred" e env renv 

check env renv (Zero e) =
   let (te,enve,renve) = check env renv e
      in
      case te of 
	TInt -> (TBool,enve,renve)
	_    -> error $  "Operation" ++  "should be applied to an integer"


check env renv  (Lam s t e) =
      let (tb,env1,renv2) = check (extend env (s,t)) renv e
      in
      ((TArrow t tb), env, renv)

check env renv (App e1 e2) =
      let ((TArrow t1 tb), env1,renv1) = check env renv e1
          (t,env2,renv2)              = check env1 renv1 e2
          in
          if (t1 == t) then
          (tb, env2,renv2)
          else
          error "Application type error"
          
check env renv (Binop e1 op e2) = 
      let ((AnnType t1 s1),enve1,renve1) = check env renv e1
          ((AnnType t2 s2),enve2,renve2) = check enve1 renve1 e2
          matches = filter (\el -> let (opx,(sx,sy,sr)) = el in  and[opx==op,sx==s1,sy==s2]) renve2 
          in
                case length matches of
                      0  -> error ("Could not find an annotation type for " ++ (show op) ++ " " ++ (show e1) ++ (show e2) )
                      1  -> let (opx, (sx,xy,sr)) = (fsta matches) in ((AnnType t1 sr),enve2,renve2)
                      _  ->  error ("Non deterministic type " ++ (show op) ++ " " ++ (show e1) ++ (show e2) )






