module Language.LambdaCore.Syntax where

data Type
  = TInt
  | TBool
  | TFun Type Type
  | TList Type
  deriving (Show, Eq)

data Exp
  = -- Lambda Calculus features
    Var String
  | Lam String Type Exp
  | App Exp Exp
  | -- Integer features
    LCInt Int
  | Plus Exp Exp
  | Minus Exp Exp
  | Div Exp Exp
  | Mult Exp Exp
  | -- Boolean features
    CBool Bool
  | OR Exp Exp
  | AND Exp Exp
  | NOT Exp
  | Equals Exp Exp
  | LessThan Exp Exp
  | GreaterThan Exp Exp
  | -- Conditional
    ITE Exp Exp Exp
  | -- List features
    Nil
  | Cons Exp Exp
  | Case Exp Exp [(Pattern, Exp)]
  deriving (Show, Eq)

-- List patterns
data Pattern
  = PNil
  | PCons String String
  deriving (Show, Eq)