--
-- EPITECH PROJECT, 2024
-- prog_fonctionnelle
-- File description:
-- Operation
--

module Operation where

adition :: Int -> Int -> Int
adition a b = a + b

substraction :: Int -> Int -> Int
substraction a b = a - b

multiply :: Int -> Int -> Int
multiply a b = a * b

divide :: Int -> Int -> Maybe Int
divide a b = if b == 0
    then Nothing
    else Just (a `div` b)

