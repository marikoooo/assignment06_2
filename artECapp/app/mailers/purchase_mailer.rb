class PurchaseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.purchase_mailer.send_when_purchase.subject
  #
  def send_when_purchase(order)
  	@order = order

    mail to: order.email,
         subject: 'Thank you for your purchase'
  end
end
