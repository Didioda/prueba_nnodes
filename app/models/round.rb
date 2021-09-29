class Round < ApplicationRecord
    belongs_to :player, optional:true
    

    def WinningBall
        value = rand()
        if value<=0.02

            return "green"
        elsif value<=0.51
            return "red"
        else
            return "black"
        end
    end

end

