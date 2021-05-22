class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :time
      t.text :instructions
      t.string :img_path

      t.timestamps
    end
  end
end