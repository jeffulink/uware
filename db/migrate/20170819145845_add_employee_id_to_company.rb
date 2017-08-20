class AddEmployeeIdToCompany < ActiveRecord::Migration[5.0]
  def change
        add_column :companies, :employee_id, :integer

  end
end
