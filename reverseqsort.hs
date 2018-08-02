-- Quick sort implemented in Haskell --

revqsort [] = []
revqsort (x:xs) = revqsort larger ++ [x] ++ revqsort smaller
               where
                    smaller = [a | a <- xs, a <= x]
                    larger = [b | b <- xs, b > x]