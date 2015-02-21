class Product < ActiveRecord::Base
    has_and_belongs_to_many :order_summaries, :join_table => "order_summaries_products" 
end
