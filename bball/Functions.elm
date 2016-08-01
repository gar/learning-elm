module Main exposing (..)

import Html
import String


isLongName : String -> Bool
isLongName name =
    (String.length name) > 10


correctlyCasedName : String -> String
correctlyCasedName name =
    if isLongName name then
        String.toUpper name
    else
        name


correctlyCasedNameWithLength : String -> String
correctlyCasedNameWithLength name =
    let
        nameLength =
            toString (String.length name)

        casedName =
            correctlyCasedName name
    in
        String.concat [ casedName, " - name length: ", nameLength ]


main : Html.Html a
main =
    Html.text (correctlyCasedNameWithLength "Bobby Tables")
