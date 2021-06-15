trice :: (Int -> Int) -> Int -> Int
trice f x = f(f(f x))

square:: Integer -> Integer
square x = x*x

testlist =["madam", "adam", "otto", "else", "kajak", "seas"]

test0 = [x+3 | x <- [2..6] ]

palindrome:: String -> Bool
palindrome xs = reverse xs == xs

test1 = [palindrome x | x <- testlist]

test2 = [x | x <- testlist, palindrome x]

test3 = filter palindrome testlist

test4 = map (+3)(map square [1..500])



test5 = filter (\x -> length x == 4) testlist


insertElement :: Ord a => a -> [a] -> [a]
insertElement x [] = [x]
insertElement x (y:ys) = if (x < y) then (x:y:ys) else (y:insertElement x ys)

insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insertElement x (insertionSort xs)

-- are able to answer question why you got a certain result