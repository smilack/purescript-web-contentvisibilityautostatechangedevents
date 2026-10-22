module Web.ContentVisibilityAutoStateChangedEvent.ContentVisibilityAutoStateChangedEvent
  ( ContentVisibilityAutoStateChangedEvent
  , fromEvent
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
