module Main where

import System.IO
import System.Environment 
import Data.List 
import qualified Data.ByteString.Lazy.Char8 as L8
import Network.HTTP.Simple
import RSS

printList :: [String] -> IO()
printList l = mapM_ putStrLn l 


main :: IO() 
main = do
    hd : tl <- getArgs
    req <- parseRequest "http://feeds.codecommit.com/codecommit" 
    response <- httpLBS req

    putStrLn $ "The status code was:" ++ show (getResponseStatusCode response)
--    putStrLn $ getResponseHeader "Content-Type" response
    let body = getResponseBody response
    L8.putStrLn body

--main = do
--    args <- getArgs
--    printList args
