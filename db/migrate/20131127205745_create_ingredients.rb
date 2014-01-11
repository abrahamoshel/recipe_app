class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.references :recipe, index: true
      t.string :name
      t.string :quantity
      t.string :measurement
      t.references :substance, index: true

      t.timestamps
    end
  end
end
