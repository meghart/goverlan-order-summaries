class CreateOrderSummariesProductsJoin < ActiveRecord::Migration
  def change
    create_table :order_summaries_products, :id => false do |t|
      t.integer "order_summary_id"
      t.integer "product_id"
    end
    add_index :order_summaries_products, :order_summary_id
    add_index :order_summaries_products, :product_id
  end
end
