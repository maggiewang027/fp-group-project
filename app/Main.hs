module Main where

import Fetch
import Parse
import Xeno.DOM
import Data.ByteString 
import qualified Data.ByteString.Lazy.Char8 as L8

main :: IO ()
main = do
    let url = "https://data.cityofchicago.org/api/views/7piw-z6r6/rows.xml"
    print "Downloading..."
    xml <- download url
    print "Parsing..."
    let rows_ = parseRows xml
    print rows_

