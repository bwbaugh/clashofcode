{-
In chemistry, simple alkanes are made of carbon and hydrogen atoms. According to the IUPAC nomenclature system, they are named by the number of carbons they contain (here are the first 5 alkanes):

- methane CH4 (1 Carbon atom, 4 Hydrogen atoms)
- ethane C2H6 (2 Carbon atoms , 6 Hydrogen atoms)
- propane C3H8 (3 Carbon atoms, 8 Hydrogen atoms)
- butane C4H10 (4 Carbon atoms, 10 Hydrogen atoms)
- pentane C5H12 (5 Carbon atoms, 12 Hydrogen atoms)

Given a diagram of a molecule find its nomenclature (its IUPAC name).

INPUT:
Line 1: An integer N for the number of lines used to draw the diagram of a molecule.
Next N lines: A diagram of a molecule consisting of characters H and C for the element hydrogen and carbon respectively; - and | to represent the bonds.

OUTPUT:
A single line containing NONE if the given molecule is not an alkane. Otherwise, output the IUPAC name of the given molecule (methane, ethane, ...).

CONSTRAINTS:
0 ≤ N ≤ 15

EXAMPLE:
Input
5
  H
  |
H-C-H
  |
  H
Output
methane
-}
main=interact$a
a d=n(f 'C')(f 'H')where f x=length$filter(==x)d
n 1 4="methane"
n 2 6="ethane"
n 3 8="propane"
n 4 10="butane"
n 5 12="pentane"
n _ _="NONE"
