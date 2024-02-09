fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n `mod` 3 == 0 = "Buzz!"
    | n `mod` 5 == 0 = "Fizz!"
    | otherwise = numberToWords n

numberToWords :: Int -> String
numberToWords n
    | n == 0 = "zero"
    | n == 1 = "one"
    | n == 2 = "two"
    | n == 3 = "three"
    | n == 4 = "four"
    | n == 5 = "five"
    | n == 6 = "six"
    | n == 7 = "seven"
    | n == 8 = "eight"
    | n == 9 = "nine"
    | n == 10 = "ten"
    | n == 11 = "eleven"
    | n == 12 = "twelve"
    | n == 13 = "thirteen"
    | n == 14 = "fourteen"
    | n == 15 = "fifteen"
    | n == 16 = "sixteen"
    | n == 17 = "seventeen"
    | n == 18 = "eighteen"
    | n == 19 = "nineteen"
    | n `div` 10 == 2 = "twenty " ++ numberToWords (n `mod` 10)
    | n `div` 10 == 3 = "thirty " ++ numberToWords (n `mod` 10)
    | n `div` 10 == 4 = "forty " ++ numberToWords (n `mod` 10)
    | n `div` 10 == 5 = "fifty " ++ numberToWords (n `mod` 10)
    | otherwise = "number not supported"

main :: IO ()
main = do
    putStrLn "Ingrese un número entre 0 y 100:"
    input <- getLine
    let number = read input :: Int
    putStrLn $ fizzBuzz number
