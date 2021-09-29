class RoundsController < ApplicationController

    def index
        @rounds = Round.all
    end

    def new
        @round = Round.new
    end

    def create
        @round = Round.find(params:[id])
        if @round.save
            redirect_to @round
        end
    end

    private
    def round_params
        params.require(:round).permit(:id, :player)
    end
end
