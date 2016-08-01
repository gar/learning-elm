module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


giveFree : Int -> Int -> Item -> Item
giveFree minQty freeQty item =
    if item.qty >= minQty then
        { item | freeQty = freeQty }
    else
        item


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


updateCart : List Item -> List Item
updateCart cart =
    let
        fiveOrMoreGetOneFree =
            giveFree 5 1

        tenOrMoreGetThreeFree =
            giveFree 10 3

        freeItemRules =
            fiveOrMoreGetOneFree >> tenOrMoreGetThreeFree
    in
        List.map freeItemRules cart


main : Html.Html msg
main =
    cart
        |> updateCart
        |> toString
        |> Html.text
