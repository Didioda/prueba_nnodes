class Round < ApplicationRecord
    
    def WinningBall
        value = rand()
        if value<=0.02

            return "Green"
        elsif value<=0.51
            return "Red"
        else
            return "Black"
        end
    end

end    

