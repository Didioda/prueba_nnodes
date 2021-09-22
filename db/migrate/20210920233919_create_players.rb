class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :last_name
      t.float :money

      t.timestamps
    end
  end
end
