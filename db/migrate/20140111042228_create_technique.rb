class CreateTechnique < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.string :name
      t.text :description
    end
  end
end
