class ChengeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'
  layout "mailer"

  def change_owner_mail(email,team)
    @email = email
    @team = team
    mail to: @email, subject: 'リーダーに任命されたことを、お知らせします。'
  end
end

