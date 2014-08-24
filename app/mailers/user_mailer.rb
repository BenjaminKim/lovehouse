class UserMailer < ActionMailer::Base
  @@benjamin = 'jehogim@gmail.com'
  default from: @@benjamin

  def ask_email(question, contact)
    @question = question
    @contact = contact
    mail(to: @@benjamin, subject: '[이코빌] 질문이 있습니다.')
  end
end
