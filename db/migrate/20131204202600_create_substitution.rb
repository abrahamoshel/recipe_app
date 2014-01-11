class CreateSubstitution < ActiveRecord::Migration
  def change
    create_table :substitutions do |t|
      t.references :substance, index: true
      t.references :substitute, index: true
    end
  end
end
