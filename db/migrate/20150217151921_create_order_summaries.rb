class CreateOrderSummaries < ActiveRecord::Migration
  def change
    create_table :order_summaries do |t|
      t.string :account_name
      t.string :salesforce_url

      t.timestamps
    end
  end
end
