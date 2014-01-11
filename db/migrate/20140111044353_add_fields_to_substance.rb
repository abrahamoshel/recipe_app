class AddFieldsToSubstance < ActiveRecord::Migration
  def change
    add_column :substances, :season, :string
    add_column :substances, :selection, :text
    add_column :substances, :storage, :text
    add_column :substances, :pairing, :text
  end
end
