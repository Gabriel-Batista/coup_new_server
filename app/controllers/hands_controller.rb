class HandsController < ApplicationController
    def show
        @hand = Hand.find(params[:id])
        render json: @hand
    end

    def update
        @hand = Hand.find(params[:id])
        @hand.update(hand_params)
        broadcast_to_match(@hand.deck.match)
        render json: {status: 200}
    end

    private

    def hand_params
        params.permit(:active)
    end
end
