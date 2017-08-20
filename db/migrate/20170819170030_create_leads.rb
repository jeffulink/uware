class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :customer
      t.string :sales
      t.string :area
      t.text :opp
      t.text :order
      

      t.timestamps
    end
  end
end
