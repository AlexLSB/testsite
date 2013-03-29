class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :adress
      t.string :tel
      t.string :rubric

      t.timestamps
    end
  end
end
