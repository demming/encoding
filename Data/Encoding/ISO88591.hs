{- | Implements ISO\/IEC 8859-1 alias latin-1 encoding. See
     <http://en.wikipedia.org/wiki/ISO/IEC_8859-1> for further informations.
 -}
module Data.Encoding.ISO88591
	(ISO88591(..)
	) where

import Data.Encoding.Base
import Data.ByteString.Base(c2w,w2c)
import Data.Char(ord,chr)
import Data.Word
import Control.Exception

data ISO88591 = ISO88591

enc :: Char -> Word8
enc c = if ord c < 256
	then c2w c
	else throwDyn (HasNoRepresentation c)

instance Encoding ISO88591 where
	encode _ = encodeSinglebyte enc
	encodeLazy _ = encodeSinglebyteLazy enc
	encodable _ c = ord c < 256
	decode _ = decodeSinglebyte w2c 