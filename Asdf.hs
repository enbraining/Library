heron a b c = k + a + b + c
    where
    k = a + b + c

xor :: Bool -> Bool -> Bool
xor p q = (p || q) && (p && q)

isL c = c == 'l'
