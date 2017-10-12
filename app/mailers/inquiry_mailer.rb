class InquiryMailer < ActionMailer::Base
  default from: "railssample575@gmail.com"

  def received_email(inquiry)
    @inquiry = inquiry
    mail to: "railssample575@gmail.com",
          subject: 'お問い合わせを承りました'
  end

  def thanks_email(inquiry)
    @inquiry = inquiry
    mail to: inquiry.email,
          subject: 'お問い合わせ受け付けました。'
  end
end