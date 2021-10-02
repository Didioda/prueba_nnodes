class AddReferencesToBet < ActiveRecord::Migration[6.1]
  def change
    add_reference :bets, :player
    add_reference :bets, :round
  end
end
