
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
-- Provides a standard version of the reverse apply operator.
--
-------------------------------------------------------------------------------------

module Control.Apply.Reverse
where

infixl 1 &
infixl 1 &!

(&)  = flip ($)
(&!) = flip ($!)

