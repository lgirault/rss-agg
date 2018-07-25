module RSS where

import Conduit
import Data.ByteString
import Data.Conduit
import Data.XML.Types
import qualified Data.ByteString.Lazy.Char8 as L8
import Network.HTTP.Simple
import Text.XML.Stream.Parse



extractXml :: (MonadThrow m) => Response L8.ByteString -> ConduitT i Event m ()
extractXml response = 
     parseLBS def $ getResponseBody response


