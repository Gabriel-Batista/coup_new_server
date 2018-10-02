class HandController < ApplicationController
    def show
        @hand = Hand.find(params[:id])
        render json: @hand
    end

    def update
        @hand = Hand.find(params[:id])
        @hand.update(hand_params)
        render json: @hand
    end

    private

    def hand_params
        params.permit(:active)
    end
end
