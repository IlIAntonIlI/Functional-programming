module Main where

import Prelude
import Data.Maybe (isNothing, fromMaybe)
import Data.Array (index, insertAt)
import Data.Array.Partial (tail)
import Partial.Unsafe (unsafePartial)
import Effect (Effect)
import Effect.Console (log)

singleton :: forall element. element -> Array element
singleton element = [element]

null :: forall t. Array t -> Boolean
null arr = 
  if isNothing (index arr 0)
  then true
  else false

length :: forall t. Array t -> Int
length arr = 
  if (null arr)
  then 0
  else 1 + length(unsafePartial tail arr)

snoc :: forall t. Array t -> t -> Array t
snoc arr el = fromMaybe [] (insertAt (length arr) el arr) 

main :: Effect Unit
main = log "🍝"

