import XMonad
import XMonad.Hooks.DynamicLog
import qualified XMonad.StackSet as W 
 -- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

 -- -- Command to launch the bar.
myBar = "xmobar"

 -- -- Custom PP, configure it as you like. It determines what's being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

 -- -- Keybinding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

 -- -- Main configuration, override the defaults to your liking.
myConfig = defaultConfig 
    { 
        modMask = mod4Mask
--        myKeys = \c -> myKeymap c $
        -- volume key binding
  --          [ ("<XF86AudioRaiseVolume>", spawn "amixer -c 0 set PCM 2dB+")
    --        , ("<XF86AudioLowerVolume>", spawn "amixer -c 0 set PCM 2dB-")]
    }


