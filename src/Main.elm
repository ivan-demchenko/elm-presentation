module Main exposing (..)

import Browser exposing (..)
import Html exposing (Html, button, div, section, text)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    { counter : Int
    }


type Msg
    = Inc
    | Dec


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model 0, Cmd.none )


view : Model -> Html Msg
view model =
    section
        []
        [ button [ onClick Inc ] [ text "Up" ]
        , div [] [ text <| String.fromInt model.counter ]
        , button [ onClick Dec ] [ text "Down" ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Inc ->
            ( { model | counter = model.counter + 1 }, Cmd.none )

        Dec ->
            ( { model | counter = model.counter - 1 }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
