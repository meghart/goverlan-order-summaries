class AddStatusToOrderSummaries < ActiveRecord::Migration
  def change
    add_column :order_summaries, :status, :string
  end
end
