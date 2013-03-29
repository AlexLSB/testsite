class AddAncestryToRubrics < ActiveRecord::Migration
  def change
    add_column :rubrics, :ancestry, :string
  end
end
