{-# OPTIONS_GHC -w #-}
module Parser.Parser where
import Parser.Token
import Main.Expr

-- parser produced by Happy Version 1.19.3

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

action_0 (8) = happyShift action_4
action_0 (10) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (22) = happyShift action_2
action_0 (23) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail

action_1 (22) = happyShift action_2
action_1 _ = happyFail

action_2 (19) = happyShift action_20
action_2 _ = happyFail

action_3 (8) = happyShift action_4
action_3 (10) = happyShift action_5
action_3 (11) = happyShift action_6
action_3 (13) = happyShift action_18
action_3 (15) = happyShift action_19
action_3 (17) = happyShift action_7
action_3 (22) = happyShift action_2
action_3 (23) = happyShift action_8
action_3 (24) = happyShift action_9
action_3 (25) = happyShift action_10
action_3 (26) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail

action_4 _ = happyReduce_3

action_5 (8) = happyShift action_16
action_5 _ = happyFail

action_6 (8) = happyShift action_4
action_6 (10) = happyShift action_5
action_6 (11) = happyShift action_6
action_6 (17) = happyShift action_7
action_6 (22) = happyShift action_2
action_6 (23) = happyShift action_8
action_6 (24) = happyShift action_9
action_6 (25) = happyShift action_10
action_6 (4) = happyGoto action_15
action_6 _ = happyFail

action_7 (19) = happyShift action_14
action_7 _ = happyFail

action_8 (8) = happyShift action_4
action_8 (10) = happyShift action_5
action_8 (11) = happyShift action_6
action_8 (17) = happyShift action_7
action_8 (22) = happyShift action_2
action_8 (23) = happyShift action_8
action_8 (24) = happyShift action_9
action_8 (25) = happyShift action_10
action_8 (4) = happyGoto action_13
action_8 _ = happyFail

action_9 (8) = happyShift action_4
action_9 (10) = happyShift action_5
action_9 (11) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (22) = happyShift action_2
action_9 (23) = happyShift action_8
action_9 (24) = happyShift action_9
action_9 (25) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail

action_10 (8) = happyShift action_4
action_10 (10) = happyShift action_5
action_10 (11) = happyShift action_6
action_10 (17) = happyShift action_7
action_10 (22) = happyShift action_2
action_10 (23) = happyShift action_8
action_10 (24) = happyShift action_9
action_10 (25) = happyShift action_10
action_10 (4) = happyGoto action_11
action_10 _ = happyFail

action_11 (8) = happyShift action_4
action_11 (10) = happyShift action_5
action_11 (11) = happyShift action_6
action_11 (13) = happyShift action_18
action_11 (15) = happyShift action_19
action_11 (17) = happyShift action_7
action_11 (22) = happyShift action_2
action_11 (23) = happyShift action_8
action_11 (24) = happyShift action_9
action_11 (25) = happyShift action_10
action_11 (4) = happyGoto action_17
action_11 _ = happyReduce_10

action_12 (8) = happyShift action_4
action_12 (10) = happyShift action_5
action_12 (11) = happyShift action_6
action_12 (13) = happyShift action_18
action_12 (15) = happyShift action_19
action_12 (17) = happyShift action_7
action_12 (22) = happyShift action_2
action_12 (23) = happyShift action_8
action_12 (24) = happyShift action_9
action_12 (25) = happyShift action_10
action_12 (4) = happyGoto action_17
action_12 _ = happyReduce_9

action_13 (8) = happyShift action_4
action_13 (10) = happyShift action_5
action_13 (11) = happyShift action_6
action_13 (13) = happyShift action_18
action_13 (15) = happyShift action_19
action_13 (17) = happyShift action_7
action_13 (22) = happyShift action_2
action_13 (23) = happyShift action_8
action_13 (24) = happyShift action_9
action_13 (25) = happyShift action_10
action_13 (4) = happyGoto action_17
action_13 _ = happyReduce_8

action_14 (8) = happyShift action_26
action_14 _ = happyFail

action_15 (8) = happyShift action_4
action_15 (10) = happyShift action_5
action_15 (11) = happyShift action_6
action_15 (12) = happyShift action_25
action_15 (13) = happyShift action_18
action_15 (15) = happyShift action_19
action_15 (17) = happyShift action_7
action_15 (22) = happyShift action_2
action_15 (23) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (4) = happyGoto action_17
action_15 _ = happyFail

action_16 (14) = happyShift action_24
action_16 _ = happyFail

action_17 (8) = happyShift action_4
action_17 (10) = happyShift action_5
action_17 (11) = happyShift action_6
action_17 (13) = happyShift action_18
action_17 (15) = happyShift action_19
action_17 (17) = happyShift action_7
action_17 (22) = happyShift action_2
action_17 (23) = happyShift action_8
action_17 (24) = happyShift action_9
action_17 (25) = happyShift action_10
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_7

action_18 (8) = happyShift action_4
action_18 (10) = happyShift action_5
action_18 (11) = happyShift action_6
action_18 (17) = happyShift action_7
action_18 (22) = happyShift action_2
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (25) = happyShift action_10
action_18 (4) = happyGoto action_23
action_18 _ = happyFail

action_19 (8) = happyShift action_4
action_19 (10) = happyShift action_5
action_19 (11) = happyShift action_6
action_19 (17) = happyShift action_7
action_19 (22) = happyShift action_2
action_19 (23) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (4) = happyGoto action_22
action_19 _ = happyFail

action_20 (8) = happyShift action_21
action_20 _ = happyFail

action_21 (20) = happyShift action_31
action_21 _ = happyFail

action_22 (8) = happyShift action_4
action_22 (10) = happyShift action_5
action_22 (11) = happyShift action_6
action_22 (13) = happyShift action_18
action_22 (15) = happyShift action_19
action_22 (17) = happyShift action_7
action_22 (22) = happyShift action_2
action_22 (23) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (25) = happyShift action_10
action_22 (4) = happyGoto action_17
action_22 _ = happyReduce_4

action_23 (8) = happyShift action_4
action_23 (10) = happyShift action_5
action_23 (11) = happyShift action_6
action_23 (13) = happyShift action_18
action_23 (15) = happyShift action_19
action_23 (17) = happyShift action_7
action_23 (22) = happyShift action_2
action_23 (23) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (4) = happyGoto action_17
action_23 _ = happyReduce_5

action_24 (6) = happyShift action_29
action_24 (7) = happyShift action_30
action_24 (5) = happyGoto action_28
action_24 _ = happyFail

action_25 _ = happyReduce_6

action_26 (20) = happyShift action_27
action_26 _ = happyFail

action_27 (13) = happyShift action_35
action_27 _ = happyFail

action_28 (9) = happyShift action_32
action_28 (18) = happyShift action_33
action_28 (19) = happyShift action_34
action_28 _ = happyFail

action_29 _ = happyReduce_12

action_30 _ = happyReduce_13

action_31 _ = happyReduce_1

action_32 (8) = happyShift action_4
action_32 (10) = happyShift action_5
action_32 (11) = happyShift action_6
action_32 (17) = happyShift action_7
action_32 (22) = happyShift action_2
action_32 (23) = happyShift action_8
action_32 (24) = happyShift action_9
action_32 (25) = happyShift action_10
action_32 (4) = happyGoto action_39
action_32 _ = happyFail

action_33 (6) = happyShift action_29
action_33 (7) = happyShift action_30
action_33 (5) = happyGoto action_38
action_33 _ = happyFail

action_34 (8) = happyShift action_37
action_34 _ = happyFail

action_35 (19) = happyShift action_36
action_35 _ = happyFail

action_36 (8) = happyShift action_41
action_36 _ = happyFail

action_37 (20) = happyShift action_40
action_37 _ = happyFail

action_38 (18) = happyShift action_33
action_38 (19) = happyShift action_34
action_38 _ = happyReduce_15

action_39 (8) = happyShift action_4
action_39 (10) = happyShift action_5
action_39 (11) = happyShift action_6
action_39 (13) = happyShift action_18
action_39 (15) = happyShift action_19
action_39 (17) = happyShift action_7
action_39 (22) = happyShift action_2
action_39 (23) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (25) = happyShift action_10
action_39 (4) = happyGoto action_17
action_39 _ = happyReduce_2

action_40 _ = happyReduce_14

action_41 (20) = happyShift action_42
action_41 _ = happyFail

action_42 (16) = happyShift action_43
action_42 _ = happyFail

action_43 (19) = happyShift action_44
action_43 _ = happyFail

action_44 (8) = happyShift action_45
action_44 _ = happyFail

action_45 (20) = happyShift action_46
action_45 _ = happyFail

action_46 _ = happyReduce_11

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ((EInt happy_var_1 happy_var_3)
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ((Lam happy_var_2 happy_var_4 happy_var_6)
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Begin happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	(HappyTerminal (TokenOp happy_var_2))
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binop happy_var_1 (opEnc happy_var_2) happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Succ happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Pred happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Zero happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 12 4 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_11)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_7)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenOp happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ((Rule happy_var_3 (opEnc happy_var_5) happy_var_7 happy_var_11)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn5
		 (TInt
	)

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_14 = happyReduce 4 5 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((AnnType happy_var_1 happy_var_3)
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 ((TArrow happy_var_1 happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 26 26 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTint -> cont 6;
	TokenTbool -> cont 7;
	TokenSym happy_dollar_dollar -> cont 8;
	TokenDot -> cont 9;
	TokenLambda -> cont 10;
	TokenLParen -> cont 11;
	TokenRParen -> cont 12;
	TokenOp happy_dollar_dollar -> cont 13;
	TokenType -> cont 14;
	TokenSemicolon -> cont 15;
	TokenImplies -> cont 16;
	TokenRule -> cont 17;
	TokenArrow -> cont 18;
	TokenSquareBrackLeft -> cont 19;
	TokenSquareBrackRight -> cont 20;
	TokenType -> cont 21;
	TokenInt happy_dollar_dollar -> cont 22;
	TokenSucc -> cont 23;
	TokenPred -> cont 24;
	TokenZero -> cont 25;
	_ -> happyError' (tk:tks)
	}

happyError_ 26 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

expr tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


opEnc :: String -> Operator
opEnc "+" = Plus
opEnc "*" = Mul

parseError :: [Token] -> a
parseError _ = error "Parse error"

parseExpr :: String -> Expr
parseExpr = expr . scanTokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
