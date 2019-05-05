-- Q1 Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Q2 Find the penultimate element in a list
myButLast :: [a] -> a
myButLast [] = error "No penultimate element in an empty list!"
myButLast [x] = error "No penultimate element in a single element list!"
myButLast xs = xs !! (length xs - 2)

myButLast' :: [a] -> a
myButLast' = head . tail . reverse

-- Q3 Find the K'th element of a list
elementAt :: [a] -> Int -> a
elementAt xs k = xs !! (k - 1)

-- Q4 Find the number of elements of a list
myLength :: [a] -> Int
myLength xs = sum (map (const 1) xs)

myLength' :: [a] -> Int
myLength' [] = 0
myLength' xs = length xs

myLength'' :: [a] -> Int
myLength'' = sum . map (\_ -> 1)

myLengthButRecursive :: [a] -> Int
myLengthButRecursive [] = 0
myLengthButRecursive (_:xs) = 1 + myLengthButRecursive xs

-- Q5 Reverse a list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse xs = reverse xs
