-- Implementing binary trees using recursive data type declarations --

data Tree a = Leaf a | Node (Tree a) a (Tree a)