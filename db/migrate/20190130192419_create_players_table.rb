class CreatePlayersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :height
      t.string :sex
      t.string :nickname
      t.string :skill
      t.integer :rating
    end
  end
end
