class DeleteSupplierIdFromSupplier < ActiveRecord::Migration[5.2]
  def change
    remove_column :suppliers, :supplier_id, :string
    add_column :products, :supplier_id, :integer
  end
end
