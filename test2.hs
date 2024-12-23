describeLetter :: Char -> String
describeLetter 'a' = "Lowercase a"
describeLetter 'A' = "Uppercase A"
describeLetter _ = "Some other character"

describeList :: [a] -> String
describeList [] = "Empty list"
describeList [x] = "List with one element"
describeList (x:xs) = "List with multiple elements:l test"

describeTuple :: (a, b) -> String
describeTuple (x, y) = "Tuple with two elements"

describeNumber :: Int -> String
describeNumber 0 = "Zero"
describeNumber 1 = "One"
describeNumber _ = "Some other number"

describeMaybe :: Maybe a -> String
describeMaybe Nothing = "No value"
describeMaybe (Just _) = "Some value"

describeEither :: Either String Int -> String
describeEither (Left _) = "Error message"
describeEither (Right _) = "Successful result"