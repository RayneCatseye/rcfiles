import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Hooks.SetWMName

main = xmonad =<< xmobar defaultConfig
    { focusFollowsMouse = True,
      terminal = "urxvt",
      startupHook = setWMName "LG3D",
      modMask = mod4Mask,
      layoutHook = avoidStruts $ layoutHook defaultConfig
    }
