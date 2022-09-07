class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :kind
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
