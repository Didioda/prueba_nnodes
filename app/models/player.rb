class Player < ApplicationRecord
    validates :name, presence: true
    validates :last_name, presence: true
    validates :money, presence:true
end
