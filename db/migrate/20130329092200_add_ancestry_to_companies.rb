class AddAncestryToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :ancestry, :string
  end
end
