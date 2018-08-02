-- Generate list of adjacent pairs from list using zip --
pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

-- Sorted check --
sorted :: Ord a => [a] -> Bool
sorted xs = and [x<=y | (x,y) <- pairs xs]