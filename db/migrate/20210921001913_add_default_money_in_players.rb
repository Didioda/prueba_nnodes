class AddDefaultMoneyInPlayers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :players, :money, 10000
  end
end
