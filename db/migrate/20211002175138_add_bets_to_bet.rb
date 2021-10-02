class AddBetsToBet < ActiveRecord::Migration[6.1]
  def change
    
    add_column :bets, :bet, :double
    add_column :bets, :result, :string
  end
end
