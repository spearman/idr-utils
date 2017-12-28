# `IdrUtils`

> Miscellaneous Idris utility types and functions.

## Installation

    idris --install package.ipkg

Make the package available to Idris with the flag `-p idr-utils`.

## Usage

```idris
import IdrUtils

main : IO ()
main = do
  let foo = [1,2,3]
  let one = IdrUtils.unwrap $ index' 0 foo
  putStrLn $ "one: " ++ show one
```
