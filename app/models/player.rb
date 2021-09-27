class Player < ApplicationRecord
    validates :name, presence: true
    validates :last_name, presence: true
    validates :money, presence:true

    def probability
        value = rand()
        if value <=0.02
            return "Green!"
        elsif value <=0.51
            return "Red!"
        else
            return "Black!"
        end
    end

    
end
