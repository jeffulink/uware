class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :ename
      t.string :cname
      t.string :dept

      t.timestamps
    end
  end
end
