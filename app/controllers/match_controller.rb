class MatchController < ApplicationController
    def index
        @matches = Match.all
        render json: @matches
    end

    def show
        @match = Match.find(params[:id])
        render json: @match
    end

    def create
        @new_match = Match.create(seats: 1)
        render json: @new_match
    end

    def update
        @match = Match.find(params[:id])
        @match.update(match_params)
        render json: @match
    end

    private

    def match_params
        params.permit(:seats)
    end
end
