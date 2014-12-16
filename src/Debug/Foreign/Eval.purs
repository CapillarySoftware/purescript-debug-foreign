module Debug.Foreign.Eval where

    --- Why on earth would you ever use this module?

import Data.Foreign.EasyFFI
import Control.Monad.Eff
import Debug.Trace
import Debug.Foreign

foreign import data Eval   :: !
foreign import data Unsafe :: *

eval :: forall r. String -> Eff (evil :: Eval | r) Unsafe
eval = unsafeForeignFunction ["x", ""] "eval(x)"

fpeek :: forall r. String -> Eff (trace :: Trace, evil :: Eval | r) Unsafe
fpeek x = eval x >>= fprint