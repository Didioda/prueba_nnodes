class AddWinnerNameToRounds < ActiveRecord::Migration[6.1]
  def change
    add_reference :rounds, :player
    
  end
end
