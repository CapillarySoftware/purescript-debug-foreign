module Debug.Foreign where

  import Control.Monad.Eff
  import Debug.Trace

  foreign import fprint """
    function fprint(x){
      return function(){
        console.log(x);
        return x;
      };
    }
  """ :: forall a e. a -> Eff (trace :: Trace | e) a

  foreign import fprintUnsafe """
    function fprintUnsafe(x){
      console.log(x);
      return x;
    }
  """ :: forall a. a -> a

  foreign import fprintStringify """
    function fprintStringify(x){
      console.log(JSON.stringify(x));
      return x;
    }
  """ :: forall a e. a -> Eff (trace :: Trace | e) a

  fspy = fprintUnsafe

module Debug.Spy (spy) where 

  foreign import _spy """
    function _spy(s){
      return function(x){
        console.log(s);
        return x;
      };
    }
  """ :: forall a. String -> a -> a

  spy :: forall a. (Show a) => a -> a
  spy x = _spy (show x) x
