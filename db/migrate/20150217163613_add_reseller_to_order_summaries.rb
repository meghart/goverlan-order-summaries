class AddResellerToOrderSummaries < ActiveRecord::Migration
  def change
    add_column :order_summaries, :reseller, :string
    add_column :order_summaries, :invoice, :string
    add_column :order_summaries, :purchase_type, :string
    add_column :order_summaries, :product, :string
    add_column :order_summaries, :quantity, :integer
    add_column :order_summaries, :activation, :string
    add_column :order_summaries, :support_start, :date
    add_column :order_summaries, :support_end, :date
  end
end
