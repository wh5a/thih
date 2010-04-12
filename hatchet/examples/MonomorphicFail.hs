-- this should produce a type error
f x = let g y z = ([x,y], z) in (g True, g 'c')
