module HappyNumberCruncher where

divides x y = x `mod` y == 0

likes x = x `divides` 3

hates x = x `divides` 7

numberOf :: (Integer -> Bool) -> [Integer] -> Int
numberOf predicate numbers = length ( filter predicate numbers )

happy :: [Integer] -> Bool
happy numbers = numberOf likes numbers > numberOf hates numbers
