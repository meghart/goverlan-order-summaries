class AddNameToProduct < ActiveRecord::Migration
  def change
    add_column :products, :name, :string
    add_column :products, :purchase_type, :string
    add_column :products, :quantity, :integer
    add_column :products, :term, :string
  end
end
