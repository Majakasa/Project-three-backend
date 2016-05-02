class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :creator
      t.integer :win
      t.integer :lose

      t.timestamps null: false
    end
  end
end
