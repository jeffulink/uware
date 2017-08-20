class RenameEnameToEmployee < ActiveRecord::Migration[5.0]
  def change
    rename_column :employees, :ename, :employee
  end
end
