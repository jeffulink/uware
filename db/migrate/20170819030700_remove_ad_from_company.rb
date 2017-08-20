class RemoveAdFromCompany < ActiveRecord::Migration[5.0]
    remove_column :companies, :ad, :string
  
  def change
  end
end
