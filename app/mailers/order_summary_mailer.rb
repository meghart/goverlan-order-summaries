class OrderSummaryMailer < ActionMailer::Base
  default from: "sales@goverlan.com"
  
  def order_summary_email(order_summary)
    @order_summary = order_summary
    mail(to: order_summary.email, cc: order_summary.reseller, subject: 'Order Summary')
  end
end
