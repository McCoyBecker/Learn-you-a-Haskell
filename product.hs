-- A product procedure implemented in Haskell --

product [] = 1
product (n:ns) = n * product ns