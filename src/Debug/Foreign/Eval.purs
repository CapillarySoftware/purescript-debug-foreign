module Debug.Foreign.Eval where

    --- Why on earth would you ever use this module?

import Control.Monad.Eff
import Debug.Trace
import Debug.Foreign

foreign import data Eval   :: !
foreign import data Unsafe :: *

foreign import evaluate """
  function evaluate(x){
    return function(){
      return eval(x);
    };
  }
""" :: forall r. String -> Eff (evil :: Eval | r) Unsafe

fpeek :: forall r. String -> Eff (trace :: Trace, evil :: Eval | r) Unsafe
fpeek x = evaluate x >>= fprint