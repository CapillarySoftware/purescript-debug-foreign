# Module Documentation

## Module Debug.Foreign

### Values

    fprint :: forall a r. a -> Eff (trace :: Trace | r) Unit

    fspy :: forall a. a -> a

    ftrace :: forall a r. a -> Eff (trace :: Trace | r) Unit


## Module Debug.Foreign.Eval

### Types

    data Eval :: !

    data Unsafe :: *


### Values

    eval :: forall r. String -> Eff (evil :: Eval | r) Unsafe

    fpeek :: forall r. String -> Eff (evil :: Eval, trace :: Trace | r) Unit