import System.IO

hello :: String -> String
hello x = "Hello " ++ x

main = do
    content <- readFile "test.txt"
    putStrLn content

heron a b c = k + a + b + c
    where
    k = a + b + c

xor :: Bool -> Bool -> Bool
xor p q = (p || q) && (p && q)

isL c = c == 'l'

calculate = do
    putStrLn "The base?"
    base <- getLine
    putStrLn "The height?"
    height <- getLine
    putStrLn ("The area of that triangle is " ++ show (read base * read height / 2))
