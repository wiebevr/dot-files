import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders

main = xmonad defaultConfig
    {
        terminal = "konsole",
        manageHook = composeAll [
            isFullscreen --> doFullFloat
        ] <+> manageDocks,
        layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
    }

myStatusBar = "xmobar"


