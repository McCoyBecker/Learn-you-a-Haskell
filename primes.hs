-- Generate factors --
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- Prime checker --
prime :: Int -> Bool
prime n = factors n == [1,n]

-- Produce list of primes up to n --
primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]