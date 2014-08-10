# Module Documentation

## Module Debug.Foreign

### Values

    fprint :: forall a r. a -> Eff (trace :: Trace | r) Unit

    ftrace :: forall a r. a -> Eff (trace :: Trace | r) Unit


## Module Debug.Foreign.Evil

### Types

    data Evil :: !

    data WTF :: *


### Values

    evil :: forall r. String -> Eff (evil :: Evil | r) WTF

    fpeek :: forall r. String -> Eff (evil :: Evil, trace :: Trace | r) Unit