module Main exposing (..)

import Html


add : number -> number -> number
add a b =
    a + b


counter : number
counter =
    0


increment : number -> number -> number
increment cnt amt =
    let
        localCount =
            cnt
    in
        localCount + amt


result : Bool
result =
    add 2 2
        |> \a -> a % 2 == 0


main : Html.Html a
main =
    Html.text (toString result)
