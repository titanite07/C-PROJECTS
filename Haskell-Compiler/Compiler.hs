module Main where

import Data.Char (isAlpha, isDigit)

data Token
  = TMov
  | TAdd
  | THlt
  | TInt Int
  | TReg String
  | TComma
  deriving (Show, Eq)

lexer :: String -> [Token]
lexer [] = []
lexer (c : cs)
  | c == ',' = TComma : lexer cs
  | isSpace c = lexer cs
  | isDigit c = let (num, rest) = span isDigit (c : cs) in TInt (read num) : lexer rest
  | isAlpha c =
      let (word, rest) = span isAlpha (c : cs)
       in case word of
            "mov" -> TMov : lexer rest
            "add" -> TAdd : lexer rest
            "hlt" -> THlt : lexer rest
            _ -> TReg word : lexer rest
  | otherwise = error ("Unknown token: " ++ [c])

isSpace :: Char -> Bool
isSpace = (== ' ')

-- AST (Abstract Syntax Tree)
data AST
  = Mov String Int
  | Add String Int
  | Hlt
  deriving (Show)

-- Parser: Converts tokens into AST
parser :: [Token] -> AST
parser (TMov : TReg reg : TInt val : []) = Mov reg val
parser (TAdd : TReg reg : TInt val : []) = Add reg val
parser (THlt : []) = Hlt
parser _ = error "Syntax Error: Invalid instruction"

-- Interpreter: Executes AST
execute :: AST -> IO ()
execute (Mov reg val) = putStrLn $ "MOV " ++ reg ++ ", " ++ show val
execute (Add reg val) = putStrLn $ "ADD " ++ reg ++ ", " ++ show val
execute Hlt = putStrLn "Halting execution."

-- Main function to process input code
compileAndRun :: String -> IO ()
compileAndRun code =
  let tokens = lexer code
      ast = parser tokens
   in execute ast

-- Example Program
main :: IO ()
main = do
  putStrLn "Enter a command (e.g., mov eax, 5):"
  input <- getLine
  compileAndRun input
