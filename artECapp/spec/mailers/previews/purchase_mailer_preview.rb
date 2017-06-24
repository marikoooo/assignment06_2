# Preview all emails at http://localhost:3000/rails/mailers/purchase_mailer
class PurchaseMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/purchase_mailer/send_when_purchase
  def send_when_purchase
    PurchaseMailerMailer.send_when_purchase
  end

end
