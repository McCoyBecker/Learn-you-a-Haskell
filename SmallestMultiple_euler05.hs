smallestMultiple :: Int -> Int -> Int -> [Int]
smallestMultiple lower upper limit = [x | x <- [lower..upper], sum [x `rem` n | n <- [1..limit]] == 0]