-- Generate a list of pentagon numbers --

pentagonNumbers :: Int -> [Int]
pentagonNumbers limit = [(3*x-1)*x/2 | x <- [1..limit]]