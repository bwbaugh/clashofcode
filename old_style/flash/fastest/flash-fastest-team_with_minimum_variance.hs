{-
Given N teams of M workers, find out the team that has the most evenly spread workloads.

To do that, you need to figure out which team has the minimum variance.
The variance is the sum of all squared deviations from the mean, divided by the number of workers.

For example:
There are 3 workers that respectively have a workload of 1, 2 and 3
The mean is (1 + 2 + 3)/3 = 2
The variance is ((1-2)² + (2-2)² + (3-2)²)/3 = 0.666…

INPUT:
N The number of teams.
M The numbers of workers per team.
Next N lines : M Integers delimited by spaces that represents the workload W of each worker.

OUTPUT:
T the number of the team that has the most evenly spread workload between workers.
The first team given as input is number 1, and so on.

CONSTRAINTS:
0 < N < 10
0 < M < 10
0 < W < 1000
There is always a single most evenly spread team.
-}
import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let n = read input_line :: Int
    input_line <- getLine
    let m = read input_line :: Int
    
    teams <- replicateM n $ do
        fmap (map read . words) getLine
    
    -- hPutStrLn stderr "Debug messages..."
    
    -- Write answer to stdout
    let variances = map toVariance teams
    let index = snd $ minimum $ zip variances [1..]
    print index

toVariance :: [Integer] -> Integer
toVariance team = sum $ map (^2) deviations
  where
    deviations = map (abs . (subtract mean)) team
    mean = sum team `div` toInteger (length team)
