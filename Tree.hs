module Tree where
data ASTree = Add ASTree ASTree
            | Sub ASTree ASTree
            | Mul ASTree ASTree
            | Div ASTree ASTree
            | Value Int
instance Show ASTree where
    show (Add e1 e2) = show e1 ++ " + " ++ show e2
    show (Sub e1 e2) = show e1 ++ " - " ++ show e2
    show (Mul e1 e2) = show e1 ++ " * " ++ show e2
    show (Div e1 e2) = show e1 ++ " / " ++ show e2
    show (Value n)   = show n


buildExpr::ASTree -> String -> ASTree -> ASTree
buildExpr e1 op e2 = case op of
    "+" -> Add e1 e2
    "-" -> Sub e1 e2
    "*" -> Mul e1 e2
    "/" -> Div e1 e2
    _ -> error "Invalid operator"

mapValues::[String] -> [ASTree]
mapValues [] = []
mapValues (x:xs) = map (\x -> Value (read x :: Int)) (x:xs)

buildExprList :: [String] -> [ASTree] -> ASTree
buildExprList [] [] = error "Unexpected pattern"
buildExprList [] [x] = x
buildExprList (x:xs) (y:yx:yz) = buildExpr y x (buildExprList xs (yx:yz))

buildAST :: ([String], [String]) -> ASTree
buildAST (x, y) = buildExprList x (mapValues y)