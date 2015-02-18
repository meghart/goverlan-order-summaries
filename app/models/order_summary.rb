class OrderSummary < ActiveRecord::Base
    # search query based on account_name
	def self.search(query)
	    where("cast(account_name as text) LIKE ?", "%#{query}%")
	end
end
