-- Fun with recursion! --

-- A sumdown function with returns the sum of numbers from input down to 0 --
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown (n-1)