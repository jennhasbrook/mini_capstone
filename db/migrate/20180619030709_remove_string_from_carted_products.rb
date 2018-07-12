class RemoveStringFromCartedProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :carted_products, :string, :string
  end
end
