class ThanksMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks_mailer.registration_confirmation.subject
  #
  def send_signup_email(user)
    @user = user
    mail to: @user.email, subject: "会員登録が完了しました。"
  end
  
  def notify_user(user)
      @user = user
      mail to: @user.email, subject: "定期配信"
  end
  
  def daily
    @users = User.all
    @users.each do |user| 
      ThanksMailer.notify_user(user).deliver
    end
  end
  
  
  # def completion_of_registration(user)
  #   @user = user
  #   mail(:subject => "登録完了のお知らせ" , to: user.email)
  # end
  
  # def registration_confirmation
  #   @greeting = "Hi"

  #   mail to: "missi0415@gmail.com"
  # end
end
