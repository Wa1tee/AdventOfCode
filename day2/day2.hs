import Data.List
import Control.Monad.Loops (unfoldM)

main :: IO ()
main = do
	readInts

	


parseString :: String -> [Int]
parseString x = map read $ words x ::[Int]

difference :: [Int] -> Int
difference x = maximum x - minimum x

count :: Int -> Int
count x = unfoldM $ fmap 

readInts :: IO [Int]
readInts = unfoldM $ fmap (check . read) getLine
	where check x = if x == 0 then Nothing else Just x