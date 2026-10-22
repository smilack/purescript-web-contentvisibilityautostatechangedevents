-- | Implementation of ContentVisibilityAutoStateChangedEvent interface from
-- | [CSS Containment Module Level 2](https://www.w3.org/TR/css-contain-2/).
module Web.ContentVisibilityAutoStateChangedEvent.ContentVisibilityAutoStateChangedEvent
  ( ContentVisibilityAutoStateChangedEvent
  , fromEvent
  , skipped
  , toEvent
  ) where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data ContentVisibilityAutoStateChangedEvent :: Type

fromEvent :: Event -> Maybe ContentVisibilityAutoStateChangedEvent
fromEvent = unsafeReadProtoTagged "ContentVisibilityAutoStateChangedEvent"

toEvent :: ContentVisibilityAutoStateChangedEvent -> Event
toEvent = unsafeCoerce

foreign import skipped :: ContentVisibilityAutoStateChangedEvent -> Boolean
