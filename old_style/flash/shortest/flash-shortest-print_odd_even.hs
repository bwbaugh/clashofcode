{-
Your program must display every other line of the given text.

Firstly, your program must display the odd lines and in a second time the even lines (first line is line #1).

INPUT:
Line 1 : N the number of lines
N next lines : a line of the text

OUTPUT:
N / 2 first lines : odd lines of the text.
N / 2 next lines : even lines of the text.

CONSTRAINTS:
1 < N < 100
N is even
1 < Length of a line < 256

EXAMPLE:
Input
4
uuuu
lala
tutu
foo
Output
uuuu
tutu
lala
foo
-}
import Data.List.Split
main=interact$unlines.a.chunk 2.tail.lines
a x=map head x++map last x
