class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.references :recipe, index: true
      t.string :kind
      t.string :quantity
      t.string :measurement

      t.timestamps
    end
  end
end
