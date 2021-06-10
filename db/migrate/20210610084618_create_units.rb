class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :name
      t.string :descrition
      t.belongs_to :faction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
