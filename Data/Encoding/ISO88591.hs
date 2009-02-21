module Data.Encoding.ISO88591 where

import Control.Throws
import Data.Encoding.Base
import Data.Encoding.Exception
import Data.Encoding.ByteSource
import Data.Encoding.ByteSink
import Data.Char (ord,chr)

data ISO88591 = ISO88591 deriving (Show)

instance Encoding ISO88591 where
    encodeChar _ c
               | c > '\255' = throwException (HasNoRepresentation c)
               | otherwise = pushWord8 (fromIntegral $ ord c)
    decodeChar _ = do
      w <- fetchWord8
      return (chr $ fromIntegral w)