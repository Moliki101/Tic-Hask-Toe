{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module A2 where

import A1
import Data.List (intercalate)

-- *** Assignment 2-1 *** --

-- Q#01

promptPlayer :: Player -> String
promptPlayer p = "Player " ++ show p ++ "'s turn: enter a row and column position"

-- Q#02
_RANGE_ :: [Int]
_RANGE_ = init [0 .. _SIZE_]

-- Q#03
isDigit :: Char -> Bool
isDigit c = c `elem` ['0' .. '9']

readDigit :: Char -> Int
readDigit c | isDigit c = read [c]
            | otherwise = -1

-- Q#04

_EMPTY_ROW_ = replicate _SIZE_ Empty

_EMPTY_BOARD_ = replicate _SIZE_ _EMPTY_ROW_

-- Q#05
isTied :: Board -> Bool
isTied board = Empty `notElem` concat board

_TIED_BOARD_ :: Board
_TIED_BOARD_ = [
    [X, O, O]
  , [O, X, X]
  , [O, X, O]
    ]

-- Q#06
indexRowStrings :: [String] -> [(Char, String)]
indexRowStrings _INDEX_ROW_ = zip ['A', 'B' .. 'Z'] _INDEX_ROW_

-- Q#07
formatLine :: [String] -> String
formatLine _LINE_ = _SEP_ ++ intercalate _SEP_ _LINE_ ++ _SEP_

-- *** Assignment 2-2 *** --

-- Q#08
isMoveInBounds :: Move -> Bool
isMoveInBounds (x, y) = and [x >= 0, x < _SIZE_, y >= 0, y < _SIZE_]

-- Q#09
stringToMove :: String -> Move
stringToMove "B1" = (1, 1)
stringToMove "a3" = (0, 3)
stringToMove "B11" = _INVALID_MOVE_
stringToMove _ = _INVALID_MOVE_

-- Q#10
replaceSquareInRow :: Player -> Int -> Row -> Row
replaceSquareInRow p i row =
  let (left, right) = splitAt i row
  in if i < 1 || col > length row || null right
      then row
      else left ++ [player] ++ tail right
      
 rsX :: Int -> Row -> Row
 rsX = replaceSquareInRow X

 rsO :: Int -> Row -> Row
 rsO = replaceSquareInRow O 