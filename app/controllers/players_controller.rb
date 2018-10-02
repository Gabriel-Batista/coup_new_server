class PlayersController < ApplicationController
    def index
        @players = Player.all
        render json: @players
    end

    def show
        @player = Player.find(params[:id])
        render json: @player
    end

    def update
        @player = Player.find(params[:id])
        @player.update(player_params)
        puts @player.match.id
        broadcast_to_match(@player.match)
        render json: {status: 200}
    end

    private

    def player_params
        params.permit(:wallet)
    end
end
