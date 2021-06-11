class UnitsController < ApplicationController

    def new
        @unit = Unit.new
        @unit.build_brand
    end

    def create
        @unit = Unit.new(unit_params)
        @unit.user_id = session[:user_id]
        if @unit.save
            redirect_to unit_path(@unit)
        else
            render :new
        end
    end

    def index
        @units = Unit.all
    end

    private

    def unit_params
        params.require(:unit).permit(:name, :descrition, :faction_id, faction_attributes: [:name])
    end
end
