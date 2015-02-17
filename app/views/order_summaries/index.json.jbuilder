json.array!(@order_summaries) do |order_summary|
  json.extract! order_summary, :id, :account_name, :salesforce_url, :email, :invoice, :reseller, :purchase_type, :product, :quantity, :activation, :support_start, :support_end
  json.url order_summary_url(order_summary, format: :json)
end
