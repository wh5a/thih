-- Functor.hs
-- output: ([1,1,4,4,9,9,16,16,25,25],[1,1,4,4,9,9,16,16,25,25])

data Tree a = T (Tree a) a (Tree a) | Nil


class MyFunctor f where
  myfmap :: (a -> b) -> f a -> f b
  myfmap = undefined

instance MyFunctor Tree where
  myfmap f Nil = Nil
  myfmap f (T l x r) = T (myfmap f l) (f x) (myfmap f r)

instance MyFunctor [] where
  myfmap = map 

insert x Nil = T Nil x Nil
insert x (T l y r)
  | x < y     = T (insert x l) y r
  | otherwise = T l y (insert x r)

listToTree [] = Nil
listToTree (x:xs) = insert x (listToTree xs)

treeToList Nil = []
treeToList (T l x r) = (treeToList l) ++ (x : (treeToList r))

a :: [Int]
a = [5,4..1] ++ [1..5]

sqMap :: MyFunctor f => f Int -> f Int
sqMap = myfmap (\x -> x*x)

main = (
        (treeToList.sqMap.listToTree) a,
        (treeToList.listToTree.sqMap) a
       )
