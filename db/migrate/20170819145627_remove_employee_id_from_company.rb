class RemoveEmployeeIdFromCompany < ActiveRecord::Migration[5.0]
 
  def change
        remove_column :companies, :employee_id, :integer

  end
end
