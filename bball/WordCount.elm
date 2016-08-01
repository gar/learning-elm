module Main exposing (..)

import Html
import String


type alias Sentence =
    String


type alias Words =
    List String


countWords : Words -> Int
countWords words =
    List.length words


toWords : Sentence -> Words
toWords sentence =
    String.split " " sentence


wordCount : Sentence -> Int
wordCount =
    toWords >> countWords


main : Html.Html a
main =
    "There are seven words in this sentence"
        |> wordCount
        |> toString
        |> Html.text
