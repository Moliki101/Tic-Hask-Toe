maximum' :: Ord a => [a] -> a
maximum' [] = error "An empty list does not have a maximum value!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: (Ord i, Num i) => i -> a -> [a]
replicate' n x
 | n <= 0 = []
 | otherwise = x : replicate' (n - 1) x

take' :: Int -> [a] -> [a]
take' n (x:xs)
 | n <= 0 = []
 | otherwise = x : take' (n - 1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' [x] = [x]
reverse' (x:xs) = reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a, b)]
zip' [] [] = []
zip' (x:xs) [] = []
zip' [] (y:ys) = [] 
zip' (x:xs) (y : ys) = (x, y) : zip' xs ys 

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
 | a == x = True
 | otherwise = elem' a xs 
