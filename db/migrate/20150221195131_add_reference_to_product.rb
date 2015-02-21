class AddReferenceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :order_summary_id, :integer
  end
end
