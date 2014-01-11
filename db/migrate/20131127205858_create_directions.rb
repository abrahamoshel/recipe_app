class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.references :recipe, index: true
      t.integer :order
      t.string :instruction

      t.timestamps
    end
  end
end
