class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.string :color
      t.float :probability

      t.timestamps
    end
  end
end
