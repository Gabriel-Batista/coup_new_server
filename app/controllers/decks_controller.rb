class DecksController < ApplicationController
    def show
        @deck = Deck.find(params[:id])
        render json: @deck
    end

    def update
        @deck = Deck.find(params[:id])
        @deck.update(deck_params)
        broadcast_to_match(@deck.match)
        render json: {status: 200}
    end

    private

    def deck_params
        params.permit()
    end
end
