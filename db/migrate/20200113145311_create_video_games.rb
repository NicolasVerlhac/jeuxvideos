class CreateVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.string :name
      t.string :condition
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
