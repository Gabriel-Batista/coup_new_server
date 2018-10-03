class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @new_user = User.new(user_params)
        if @new_user.save
            render json: @new_user
        else
            render json: {error: "Username already exists."}
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @new_user
        else
            render json: {error: "Username already exists."}
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "User #{params[:id]} was destroyed."}
    end

    def join_game
        begin
            @matches = Match.where("seats < 4")
            @user = User.find(params[:user_id])
            if @matches.empty? && @user.in_match === false
                @match = Match.create(turnId: @user.players.last.id)
                @match.players.create(user_id: params[:user_id])
                @user.update(in_match: true)
                render json: @match
            elsif @user.in_match === false
                @match = @matches.all.first
                @match.players.create(user_id: params[:user_id])
                @match.update(seats: @match.seats + 1)
                @user.update(in_match: true)
                broadcast_to_match(@match)
                render json: @match
            else
                render json: {error: "User is already in a match"}, status: 400
            end
        rescue ActiveRecord::RecordNotFound
            render json: {error: "User #{params[:id]} does not exist"}, status: 400
        end
    end

    private

    def user_params
        params.permit(:username, :user_id)
    end
end
