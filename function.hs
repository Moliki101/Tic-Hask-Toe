lucky :: (Eq a, Num a) => a -> [Char]
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you are out of luck, pal!"

sayMe :: (Eq a, Num a) => a -> [Char]
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe 6 = "Not between 1 and 5"

factorial :: (Eq p, Num p) => p -> p
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Num a, Num b) => (a, b) -> (a, b) -> (a, b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [p] -> p
head' [] = error "Cannot call the head of an empty list, dummy!"
head' (x:_) = x

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: Num p => [p] -> p
sum' [] = 0
sum' (x:xs) = x + sum' xs

bmiTell :: (Ord a, Fractional a) => a -> a -> [Char]
bmiTell weight height
 | bmi <= skinny = "You are underweight"
 | bmi <= normal = "You have normal weight"
 | bmi <= fat = "You are overweight"
 | otherwise = "You are obese!"
 where bmi = weight / height ^ 2
       skinny = 18.5
       normal = 25
       fat = 30

totalSurface :: Floating a => a -> a -> a
totalSurface r h = sideArea + 2 * topArea
      where
            sideArea = 2 * pi * r * h
            topArea = pi * r ^2