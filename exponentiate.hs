-- A procedure for exponentiation using recursion --

import Prelude hiding ((^))

(^) :: Int -> Int -> Int
m^1 = m
m^n = m*(m^(n-1))