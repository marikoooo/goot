class InquiryMailer < ActionMailer::Base
  default to: "railssample575@gmail.com"

 
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
 
end