class PlayerRatingsController < ApplicationController

    def new
        if @unit = Unit.find_by_id(params[:unit_id])
        @player_rating = @unit.player_ratings.build 
        else
            @player_rating = player_rating.new
        end
    end

    def create
        @player_rating = current_user.player_rating.build(player_rating_params)
        if @player_rating.save
          redirect_to player_rating_path(@player_rating) 
        else
            render :new
        end
    end

    def show
        @player_rating = PlayerRating.find_by_id(params[:id])
    end

    def index
        if @unit = Unit.find_by_id(params[:unit_id])
        else
        #not nested
        @player_ratings = PlayerRating.all
        end
    end

    private

    def player_rating_params
        params.require(:player_rating).permit(:unit_id, :content, :stars, :title)
    end
end
