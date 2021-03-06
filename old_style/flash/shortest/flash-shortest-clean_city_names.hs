{-
Given a well written list of cities, your program must clean another list of cities that are sometime miswritten.

Miswritten cities can contain or lack spaces, or have a different case than expected.

INPUT:
Line 1: The number N of cities.
Next N lines: A string cityName.
Next line: The number M of cities to clean.
Next M lines: A string uncleanedCityName.

OUTPUT:
M lines: Strings containing cleaned city names.

CONSTRAINTS:
2 ≤ N ≤ 5
1 ≤ M ≤ 20
1 ≤ length of cityName ≤ 30
1 ≤ length of uncleanedCityName ≤ 30

EXAMPLE:
Input
2
Montpellier
New York
3
new york
NewYork
montpellier
Output
New York
New York
Montpellier
-}
import Control.Monad
import Data.Char
import Data.Maybe
import System.IO
main=do
 n<-readLn
 xs<-replicateM n getLine
 m<-readLn
 replicateM_ m$do
  x<-getLine
  putStrLn$r x xs
r x xs=fromJust$lookup(c x)(zip(map c xs)xs)
c=filter(/= ' ').map toLower
