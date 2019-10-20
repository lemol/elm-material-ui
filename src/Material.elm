module Material exposing (textButton)

import Color.Manipulate exposing (fadeIn)
import Css exposing (..)
import Element exposing (Element)
import Html.Styled exposing (Attribute, Html, styled, text, toUnstyled)
import Material.Theme exposing (h1)


textButton : List (Attribute msg) -> String -> Element msg
textButton attrs label =
    html (textButtonS attrs label)


html : Html msg -> Element msg
html =
    toUnstyled >> Element.html


textButtonS : List (Attribute msg) -> String -> Html msg
textButtonS attrs label =
    button ButtonHtml attrs [ text label ]


type ButtonControlType
    = ButtonHtml
    | AHtml


primaryColor =
    rgb 56 151 240


primaryTextColor =
    rgba 0 0 0 0.87


defaultFontFamily =
    [ "Roboto", "Helvetica", "Arial", "sans-serif" ]


buttonTypography =
    [ fontFamilies defaultFontFamily
    , fontSize <| px 14
    , lineHeight <| num 1.75
    , letterSpacing <| em <| 0.4 / 14
    , textTransform uppercase
    ]


button : ButtonControlType -> List (Attribute msg) -> List (Html msg) -> Html msg
button controlType =
    styled (buttonBase controlType)
        ([ boxSizing borderBox
         , minWidth <| px 64
         , padding2 (px 6) (px 16)
         , borderRadius <| px 5
         , backgroundColor primaryColor
         , color primaryTextColor
         , animationDuration <| ms 250
         , hover
            [ textDecoration none

            -- , backgroundColor <| fadeIn
            ]
         ]
            ++ buttonTypography
        )


buttonBase : ButtonControlType -> List (Attribute msg) -> List (Html msg) -> Html msg
buttonBase controlType =
    styled Html.Styled.button
        [ display inlineFlex
        , alignItems center
        , justifyContent center
        , position relative
        , property "WebkitTapHighlightColor" "transparent"
        , backgroundColor transparent
        , outline zero
        , border zero
        , margin zero
        , borderRadius zero
        , padding zero
        , cursor pointer
        , property "userSelect" "none"
        , verticalAlign middle
        , textDecoration none
        , property "-moz-appearance" "none"
        , property "-webkit-appearance" "none"
        , color inherit
        , pseudoElement "-moz-focus-inner"
            [ borderStyle none ]
        ]


button1 : List (Attribute msg) -> List (Html msg) -> Html msg
button1 =
    styled Html.Styled.button
        [ color <| rgb 255 255 255
        , fontVariant smallCaps
        , fontWeight bold
        , padding <| px 10
        , width <| pct 100
        , backgroundColor <| rgb 56 151 240
        , borderRadius <| px 5
        , borderWidth <| px 0
        , boxShadow5 (px 0) (px 3) (px 4) (px 0.1) (rgba 0 0 0 0.3)
        , cursor pointer
        , position relative
        , zIndex <| int 1
        , hover
            [ backgroundColor <| rgb 39 105 168
            , boxShadow5 (px 0) (px 4) (px 4) (px 0.5) (rgba 0 0 0 0.3)
            ]
        , active
            [ boxShadow5 (px 0) (px 6) (px 8) (px 0.5) (rgba 0 0 0 0.3)
            , before
                [ width <| pct 100
                , marginLeft <| px 0
                ]
            ]
        , before
            [ property "content" "\"\""
            , backgroundColor <| rgba 240 240 240 0.1
            , display block
            , position absolute
            , bottom <| px 0
            , left <| px 0
            , marginLeft <| pct 50
            , width <| pct 0
            , height <| pct 100
            , property "transition" "all .2s"
            , zIndex <| int -1
            ]
        ]
