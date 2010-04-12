-- Class.hs
-- Output: [3,2,1]

class Reversable a where
  myreverse :: a -> a
  myreverse _ = undefined

instance Reversable [a] where
  myreverse = reverse

main = myreverse [1,2,3]

data Foo = Boo | Moo 

{-
instance Eq Foo where
   Boo == Boo = True
   Moo == Moo = True
   _   == _   = False
-}
