-- A scalar product procedure which takes in two lists and returns the Euclidean dot product --

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]