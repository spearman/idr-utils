{------------------------------------------------------------------------------
    IdrUtils.idr
------------------------------------------------------------------------------}

||| Miscellaneous Idris utilities.

module IdrUtils

import Debug.Error

%language ElabReflection -- for Debug.Error.error

%default total

-------------------------------------------------------------------------------
--  unwrap                                                                   --
-------------------------------------------------------------------------------

||| Unsafe unwrap of `Maybe` value.
export
unwrap : Maybe a -> a
unwrap = fromMaybe $
  error "unwrap failed: expected Just something, found Nothing"

-------------------------------------------------------------------------------
--  test                                                                     --
-------------------------------------------------------------------------------

export
test : IO ()
test = do
  let foo = [1,2,3]
  let one = unwrap $ index' 0 foo
  putStrLn $ "one: " ++ show one
