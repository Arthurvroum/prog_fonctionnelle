--
-- EPITECH PROJECT, 2024
-- prog_fonctionnelle
-- File description:
-- Parse
--

isOperator :: String -> Bool
isOperator "+" = True
isOperator "-" = True
isOperator "*" = True
isOperator "/" = True
isOperator _ = False

isNum :: String -> Bool
isNum [] = True
isNum (x:xs) = if x >= '0' && x <= '9'
    then isNum xs
    else False

filterArr :: (a -> Bool) -> [a] -> [a]
filterArr _ [] = []
filterArr f (x:xs) = if f x == True
    then x : filterArr f xs
    else filterArr f xs

parseLine :: [String] -> ([String], [String])
parseLine [] = ([], [])
parseLine (x:xs) = if isOperator x == True
    then (x : fst (parseLine xs), snd (parseLine xs))
    else if isNum x == True
    then (fst (parseLine xs), x : snd (parseLine xs))
    else ([], [])
