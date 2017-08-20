class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :ename
      t.string :cname

      t.timestamps
    end
    add_column :companies, :area_id, :integer
    add_index :companies, :area_id
  end
end
