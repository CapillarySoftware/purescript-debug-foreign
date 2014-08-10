# Module Documentation

[![Build Status](https://travis-ci.org/CapillarySoftware/purescript-foreign-debug.svg?branch=master)](https://travis-ci.org/CapillarySoftware/purescript-foreign-debug)

## Module Debug.Foreign

### Values

    fprint :: forall a r. a -> Eff (trace :: Trace | r) Unit

    ftrace :: forall a r. a -> Eff (trace :: Trace | r) Unit


## Module Debug.Foreign.Evil

### Types

    data Evil :: !

    data Unsafe :: *


### Values

    evil :: forall r. String -> Eff (evil :: Evil | r) Unsafe

    fpeek :: forall r. String -> Eff (evil :: Evil, trace :: Trace | r) Unit