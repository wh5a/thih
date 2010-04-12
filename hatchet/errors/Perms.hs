-- this is some persons code that produces a type
-- error, we should have more test cases like this

perms :: [a] -> [[a]]
perms [] = [[]]
perms (a:as) = concatMap (\b -> fst b:perms (snd b)) (del (a:as))

del :: [a] -> [(a,[a])]
del [] = []
del (a:as) = (a,as):(map (\b -> (fst b,a:(snd b))) (del as))
