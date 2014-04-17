
-------------------------------------------------------------------------------------
-- |
-- Copyright   : (c) Hans Hoglund 2012
--
-- License     : BSD-style
--
-- Maintainer  : hans@hanshoglund.se
-- Stability   : stable
-- Portability : portable
--
-- Provides the revese apply operator.
--
-- The definitions of '&' and '<&>' are identical to those in the 
-- <http://hackage.haskell.org/package/lens lens> package. Hopefully they could 
-- move into <http://hackage.haskell.org/package/base base> 
-- at some point.
--
-------------------------------------------------------------------------------------

module Control.Apply.Reverse
(
  -- ** Reverse ($)
  (&),
  (&!),

  -- ** Reverse (\<$\>)
  (<&>),  
)
where

import Control.Applicative

infixl 1 &
infixl 1 &!

(&) :: a -> (a -> b) -> b
(&)   = flip ($)

(&!) :: a -> (a -> b) -> b
(&!)  = flip ($!)

infixl 1 <&>
(<&>) :: Functor f => f a -> (a -> b) -> f b
(<&>) = flip (<$>)

