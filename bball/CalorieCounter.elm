module Main exposing (..)

import Html exposing (h3, div, button, text, input, Html)
import Html.Attributes exposing (type', value)
import Html.Events exposing (onClick, onInput)
import Html.App as App
import String exposing (toInt)


-- model


type alias Model =
    { totalCals : Int
    , inputCals : Int
    }


initModel : Model
initModel =
    { totalCals = 0
    , inputCals = 0
    }



-- update


type Msg
    = AddCalories
    | InputCals String
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalories ->
            { totalCals = model.totalCals + model.inputCals
            , inputCals = 0
            }

        InputCals cals ->
            { model | inputCals = (Result.withDefault 0 (toInt cals)) }

        Clear ->
            initModel



-- view


view : Model -> Html Msg
view model =
    div
        []
        [ h3
            []
            [ text ("Total calories: " ++ (toString model.totalCals)) ]
        , input
            [ value (toString model.inputCals), onInput InputCals ]
            []
        , button
            [ type' "button"
            , onClick AddCalories
            ]
            [ text "Add" ]
        , button
            [ type' "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
