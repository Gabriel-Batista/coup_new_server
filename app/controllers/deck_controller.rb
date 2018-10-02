class DeckController < ApplicationController
    def show
        @deck = Deck.find(params[:id])
        render json: @deck
    end

    def update
        @deck = Deck.find(params[:id])
        @deck.update(deck_params)
    end

    private

    def deck_params
        params.permit()
    end
end
