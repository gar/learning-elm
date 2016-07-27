import Html exposing (Html, button, div, input, label, p, text)
import Html.App as Html
import Html.Events exposing (onInput)
import Html.Attributes exposing (..)
import String exposing (concat)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- Model

type alias Name = String

model = "World"


-- Update

type Msg =
  UpdateName Name

update msg name =
  case msg of
    UpdateName name ->
      name


-- View

view model =
  div []
    [ label []
      [ text "Name: "
      , input [ type' "text", value model, onInput UpdateName ] [] ]
    , p [] [ text (concat [ "Hello", " ", model, "!" ]) ]
    ]
