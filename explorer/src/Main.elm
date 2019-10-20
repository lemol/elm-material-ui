module Main exposing (main)

import Element exposing (column, layout)
import Html exposing (Html)
import Material exposing (textButton)
import UIExplorer exposing (UIExplorerProgram, defaultConfig, explore, storiesOf)


button : String -> String -> Html msg
button label bgColor =
    textButton [] label |> layout []


main : UIExplorerProgram {} () {}
main =
    explore
        defaultConfig
        [ storiesOf
            "Button"
            [ ( "SignIn", \_ -> button "Sign In" "pink", {} )
            , ( "SignOut", \_ -> button "Sign Out" "cyan", {} )
            , ( "Loading", \_ -> button "Loading please wait..." "white", {} )
            ]
        ]
