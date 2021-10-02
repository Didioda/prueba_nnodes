class AddBetsToBet < ActiveRecord::Migration[6.1]
  def change
    add_column :bets, :bet, :int
    add_column :bets, :result, :string
  end
end
