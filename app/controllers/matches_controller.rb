
class MatchesController < ApplicationController
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
        broadcast_to_match(@match)
        render json: {status: 200}
    end

    def destroy
        @match = Match.find(params[:id])
        @match.destroy
    end

    private

    def match_params
        params.permit(:seats)
    end
end
