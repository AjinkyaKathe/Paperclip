class ExampleMailer < ApplicationMailer
  default from: "ajinkyakathe013@gmail.com"
  def sample_email(user)
    @user =user
    mail(to: @user.email,subject: 'Sample Email')
  end

end
