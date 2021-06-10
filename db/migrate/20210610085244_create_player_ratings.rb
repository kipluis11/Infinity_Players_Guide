class CreatePlayerRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :player_ratings do |t|
      t.integer :stars
      t.string :title
      t.string :content
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
