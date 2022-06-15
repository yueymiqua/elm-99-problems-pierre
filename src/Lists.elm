module Lists exposing (..)

import Maybe exposing (Maybe(..))


last : List a -> Maybe a
last l =
    let
        lastElement listInput =
            listInput
                |> List.reverse
                |> List.head
    in
    lastElement l



-- Write a function that returns the last element of a list


lastTwo :
    List a
    -> ( Maybe a, Maybe a ) -- Have to fix to type Maybe (a, a)
lastTwo l =
    let
        lastAndPen listInput =
            listInput
                |> List.reverse
                |> List.take 2
                |> List.reverse

        lastElement =
            List.head (lastAndPen l)

        penElement =
            List.head <| List.reverse (lastAndPen l)
    in
    ( lastElement, penElement )



-- Find the last but one (last and penultimate) elements of a list.


duplicate : List a -> List a
duplicate l =
    let
        emptyList =
            []

        newList inputList =
            List.map (\x -> x :: x :: emptyList) inputList
    in
    List.concat (newList l)



-- Duplicate the elements of a list.
-- e.g. [1,2,3] -> [1,1,2,2,3,3]
-- Debug.todo "not implemented"


isPalindrome : List a -> Bool
isPalindrome l =
    let
        reverseList inputList =
            List.reverse inputList
    in
    l == reverseList l



-- Find out whether a list is a palindrome.
-- HINT: a palindrome is its own reverse.
