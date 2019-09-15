-- Q6  Find out whether a list is a palindrome
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome xs = if reverse xs == xs then True else False

-- Q7 Flatten a nested list structure


-- Q8 Eliminate consecutive duplicates of list elements


-- Q9 Pack consecutive duplicates of list elements into sublists


-- Q10
