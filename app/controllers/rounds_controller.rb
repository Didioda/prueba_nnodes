class RoundsController < ApplicationController

    def index
        @rounds = Round.all
    end

    def new
        @round = Round.new()
    end

    

    def createPlayer
    end
end
