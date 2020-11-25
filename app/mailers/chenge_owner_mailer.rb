class ChengeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'
  layout "mailer"

  def change_owner_mail(email,team)
    @email = email
    @team = team
    mail to: @email, subject: 'リーダーに任命されたことを、お知らせします。'
  end

  def destroy_agenda_mail(agenda,team)
    @agenda = agenda
    @team = team
    mail to: team.members.pluck(:email), subject: "アジェンダが削除されました"
  end
end

