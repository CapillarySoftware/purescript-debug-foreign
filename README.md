# Module Documentation

[![Build Status](https://travis-ci.org/CapillarySoftware/purescript-debug-foreign.svg?branch=master)](https://travis-ci.org/CapillarySoftware/purescript-debug-foreign)
[![Bower version](https://badge.fury.io/bo/purescript-debug-foreign.svg)](http://badge.fury.io/bo/purescript-debug-foreign)
[![Dependency Status](https://www.versioneye.com/user/projects/547021488101068de4000602/badge.svg?style=flat)](https://www.versioneye.com/user/projects/547021488101068de4000602)

## Module Debug.Foreign

### Values

    fprint :: forall a e. a -> Eff (trace :: Trace | e) a

    fprintStringify :: forall a e. a -> Eff (trace :: Trace | e) a

    fprintUnsafe :: forall a. a -> a


## Module Debug.Foreign.Eval

### Types

    data Eval :: !

    data Unsafe :: *


### Values

    evaluate :: forall r. String -> Eff (evil :: Eval | r) Unsafe

    fpeek :: forall r. String -> Eff (evil :: Eval, trace :: Trace | r) Unsafe