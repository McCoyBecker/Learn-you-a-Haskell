primesTo m = eratos [2..m]               -- bounded, up to m
    where
    eratos []     = []
    eratos (p:xs) = p : eratos (xs `minus` [p, p+p..])

     -- ordered lists, difference and union
minus (x:xs) (y:ys) = case (compare x y) of 
    LT -> x : minus  xs  (y:ys)
    EQ ->     minus  xs     ys 
    GT ->     minus (x:xs)  ys
minus  xs     _     = xs
union (x:xs) (y:ys) = case (compare x y) of 
    LT -> x : union  xs  (y:ys)
    EQ -> x : union  xs     ys 
    GT -> y : union (x:xs)  ys
union  xs     []    = xs
union  []     ys    = ys