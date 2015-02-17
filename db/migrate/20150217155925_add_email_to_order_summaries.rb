class AddEmailToOrderSummaries < ActiveRecord::Migration
  def change
    add_column :order_summaries, :email, :string
  end
end
