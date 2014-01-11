class CreateRecipeTechnique < ActiveRecord::Migration
  def change
    create_table :recipe_techniques do |t|
      t.references :recipe, index: true
      t.references :technique, index: true
    end
  end
end
