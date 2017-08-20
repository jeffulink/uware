class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :ad
      t.string :name
      t.integer :com_id
      t.integer :skill_id
      t.integer :sales_id

      t.timestamps
    end
  end
end
