class ApplicationMailer < ActionMailer::Base
  default from: 'ARTZINE',
          cc: 'from@artzine.com',
          reply_to: 'from@artzine.com'
  layout 'mailer'
end
