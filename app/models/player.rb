class Player < ApplicationRecord
    validates :name, presence: true
    validates :last_name, presence: true
    validates :money, presence:true
    
    has_many :bets



    def probability
        value = rand()
        if value <=0.02
            return "green"
        elsif value <=0.51
            return "red"
        else
            return "black"
        end
    end

    def range
        value=rand(0.08..0.151)
        return value.round(2)
    end
end
