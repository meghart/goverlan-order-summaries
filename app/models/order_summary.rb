class OrderSummary < ActiveRecord::Base
    has_and_belongs_to_many :products, :join_table => "order_summaries_products" 
    
    # search query
    def self.search(query)
        return where('FALSE') if query.blank?
        
        conditions = []
        search_columns = [ :account_name, :salesforce_url, :email, :invoice, :activation, :status ]
        
        query.split(' ').each do |word|
            search_columns.each do |column|
                conditions << " lower(#{column}) LIKE lower(#{sanitize("%#{word}%")}) "
            end
        end
        
        conditions = conditions.join('OR')    
        self.where(conditions)
        #where("account_name LIKE ? or email LIKE ? or invoice LIKE ? or activation LIKE ?", "%#{query}%", "%#{query}%" , "%#{query}%", "%#{query}%")
    end
end
