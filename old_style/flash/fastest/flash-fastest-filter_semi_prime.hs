{-
A Semi-Prime is a number that is the product of two (not necessarily different) prime numbers P and Q.
Remember that a prime number is a number greater than 1 that is only divisible by 1 and itself.

For instance:
15 = 3 × 5 is a Semi-Prime
9 = 3 × 3 is a Semi-Prime
28 = 2 × 2 × 7 is not a Semi-Prime

You must print all the integers in a list that are Semi-Primes.
Input
Line 1:N the number of items in the list
Next N lines: Each item Xi of the list
Output
One line for each Semi-Prime in the list, in order of appearance.
Constraints
N ≤ 40
P,Q < 5000
Xi < 10000
Example
Input
10
1
2
3
4
5
6
7
8
9
10
Output
4
6
9
10
-}
main :: IO ()
main = interact $ unlines . map show . filter isSemiPrime . map read . tail . lines

isSemiPrime :: Integer -> Bool
isSemiPrime x = not . null $ [
    1 | y <- takeWhile (<= x) primes,
    z <- takeWhile (<= x) primes, y * z == x]

primes :: [Integer]
primes = 2 : sieve [3,5..] where sieve (p:xs) = p : sieve [x | x <- xs, x `rem` p > 0]
