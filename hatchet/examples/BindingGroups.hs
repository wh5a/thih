{-
   This example will type check if you
   split the implicit bindings into further binding groups
   it will not type check if you infer types of all
   implicit types together
-}

main = undefined

f :: a -> b
f x = g True
g y = h True
h z = f True

foo = h () 
