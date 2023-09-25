module Main exposing (..)

import Browser exposing (..)
import Html exposing (..)


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
    = Noop


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model 0, Cmd.none )


view : Model -> Html Msg
view _ =
    div [] [ text "hello" ]


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
