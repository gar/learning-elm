module Main exposing (..)

import Html
import String


(~=) : String -> String -> Bool
(~=) a b =
    let
        firstLetter =
            String.left 1 a
    in
        String.startsWith firstLetter b


main : Html.Html a
main =
    "foo" ~= "bar" |> toString |> Html.text
