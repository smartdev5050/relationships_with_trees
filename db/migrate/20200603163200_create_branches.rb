class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.integer :length
      t.references :tree, null: false, foreign_key: true
      t.references :forest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
