class AddReferenceToOrderSummary < ActiveRecord::Migration
  def change
    add_column :order_summaries, :product_id, :integer
  end
end
