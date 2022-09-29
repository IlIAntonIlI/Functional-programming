module Lab1 where

import Data.List (List(..))
import Data.Maybe (Maybe(..))
import Prelude
import Effect (Effect)
import Effect.Console (log)

singleton :: forall a. a -> List a
singleton x = Cons x Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc Nil element = Cons element Nil
snoc (Cons x list1) element = Cons x (snoc list1 element)

length :: forall a. List a -> Int
length Nil = 0
length (Cons x list1) = 1 + (length list1)

test :: Effect Unit
test = do
    log $ show $ singleton 8
    log $ show $ null (Cons 5 (Cons 4 Nil))
    log $ show $ null Nil
    log $ show $ snoc Nil 5
    log $ show $ snoc (Cons 4 Nil) 5
    log $ show $ length Nil
    log $ show $ length (Cons 5 (Cons 4 Nil))
    log $ show $ length (snoc (Cons 5 Nil) 4)
    


