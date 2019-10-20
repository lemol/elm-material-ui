module Material.Theme exposing (CommonColors, Palette, PaletteColor, PaletteType(..), TypeAction, TypeBackground, TypeDivider, TypeText, Typography, TypographyStyle, defaultFontFamily, h1)

import Css exposing (..)



-- PALETTE


type alias CommonColors =
    { black : Color
    , white : Color
    }


type alias PaletteColor =
    { light : Color
    , main : Color
    , dark : Color
    , contrastText : Color
    }


type alias TypeText =
    { primary : Color
    , secondary : Color
    , disabled : Color
    , hint : Color
    }


type alias TypeDivider =
    Color


type alias TypeAction =
    { active : Color
    , hover : Color
    , hoverOpacity : Float
    , selected : Color
    , disabled : Color
    , disabledBackground : Color
    }


type alias TypeBackground =
    { default : Color
    , paper : Color
    }


type PaletteType
    = Light
    | Dark


type alias Palette =
    { common : CommonColors
    , type_ : PaletteType
    , contrastThreshold : Float
    , tonalOffset : Float
    , primary : PaletteColor
    , secondary : PaletteColor
    , error : PaletteColor
    , grey : Color
    , text : TypeText
    , divider : TypeDivider
    , action : TypeAction
    , background : TypeBackground
    }



-- TYPOGRAPHY


type alias Typography =
    { --* FontStyle
      fontFamily : String
    , fontSize : FontSize Never
    , fontWeightLight : FontWeight Never
    , fontWeightRegular : FontWeight Never
    , fontWeightMedium : FontWeight Never
    , fontWeightBold : FontWeight Never
    , h1 : TypographyStyle
    , h2 : TypographyStyle
    , h3 : TypographyStyle
    , h4 : TypographyStyle
    , h5 : TypographyStyle
    , h6 : TypographyStyle
    , subtitle1 : TypographyStyle
    , subtitle2 : TypographyStyle
    , body1 : TypographyStyle
    , body2 : TypographyStyle
    , caption : TypographyStyle
    , button : TypographyStyle
    , overline : TypographyStyle
    }


type alias TypographyStyle =
    { fontFamily : String

    -- , fontSize : FontSize Never
    -- , fontWeight : FontWeight Never
    -- , fontStyle : FontStyle Never
    -- , color : Color
    -- , letterSpacing : Maybe (Length Never Never)
    -- , lineHeight : Maybe (LengthOrNumber Never)
    -- , textTransform : Maybe (TextTransform Never)
    }


defaultFontFamily : String
defaultFontFamily =
    "Roboto, Helvetica, Arial, sans-serif"


h1 : TypographyStyle
h1 =
    { fontFamily = defaultFontFamily

    -- , fontSize = rem 6
    -- , fontWeight = px 300
    -- , fontStyle = inherit
    -- , color = inherit
    -- , letterSpacing = rem -0.01562
    -- , lineHeight = int 1
    -- , textTransform = Nothing
    }



-- defaultTypography : Typography a
-- defaultTypography =
--     { fontFamily = defaultFontFamily
--     , fontSize = px 14
--     , fontWeightLight = px 300
--     , fontWeightRegular = px 400
--     , fontWeightMedium = px 500
--     , fontWeightBold = px 700
--     , h1 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , h2 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , h3 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , h4 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , h5 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , h6 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , subtitle1 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , subtitle2 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , body1 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , body2 =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , caption =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , button =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     , overline =
--         { fontFamily = defaultFontFamily
--         , fontWeight = px 300
--         , fontSize = rem 6
--         , lineHeight = int 1
--         , letterSpacing = rem -0.01562
--         }
--     }
