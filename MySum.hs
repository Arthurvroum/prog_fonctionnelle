--
-- EPITECH PROJECT, 2024
-- prog_fonctionnelle
-- File description:
-- MySum
--

mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

