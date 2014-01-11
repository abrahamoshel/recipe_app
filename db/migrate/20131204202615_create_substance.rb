class CreateSubstance < ActiveRecord::Migration
  def change
    create_table :substances do |t|
      t.text :description
      t.string :name
    end
  end
end
