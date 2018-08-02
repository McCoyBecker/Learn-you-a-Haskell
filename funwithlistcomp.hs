-- Generate factors --
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- Square an integer --
square :: Int -> Int
square input = input*input

-- Create a coordinate grid of provided size --
grid :: Int -> Int -> [(Int,Int)]
grid xlength ylength = [(x,y) | x <- [0..xlength], y <- [0..ylength]]

-- Replicate with list comp --
replicate :: Int -> a -> [a]
replicate number element = [element | x <- [0..number]]

-- Pythagorean triples --
pyths :: Int -> [(Int,Int,Int)]
pyths limit = [(x,y,z) | x <- [0..limit], y <- [0..limit], z <- [0..limit], square x + square y - square z == 0, x /= y, x /= z, y /= z]

-- Perfect number test --
perfect :: Int -> Bool
perfect input = input == (sum (factors input)-input)

-- Perfect number generator up to certain limit --
perfects :: Int -> [Int]
perfects limit = [x | x <- [1..limit], perfect x == True]