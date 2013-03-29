class CreateRubrics < ActiveRecord::Migration
  def change
    create_table :rubrics do |t|
      t.string :title
      t.integer :parent_id
      t.text :slug

      t.timestamps
    end
  end
end
