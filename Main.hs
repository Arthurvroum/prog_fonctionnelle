--
-- EPITECH PROJECT, 2024
-- prog_fonctionnelle
-- File description:
-- main
--

import System.Environment
import System.Exit
import Operation

dop :: [String] -> IO ()
dop [] = exitWith (ExitFailure 84)
dop (x:y:z:xs) = do
    case y of
        "+" -> print (adition (read x :: Int) (read z :: Int))
        "-" -> print (substraction (read x :: Int) (read z :: Int))
        "*" -> print (multiply (read x :: Int) (read z :: Int))
        "/" -> print (divide (read x :: Int) (read z :: Int))
        _ -> exitWith (ExitFailure 84)

main :: IO ()
main =  do
    param <- getLine
    dop (words param)


