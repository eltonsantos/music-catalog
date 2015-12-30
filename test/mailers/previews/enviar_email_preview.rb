# Preview all emails at http://localhost:3000/rails/mailers/enviar_email
class EnviarEmailPreview < ActionMailer::Preview
  def sample_mail_preview
    EnviarEmail.send_mail(Disco.first)
  end
end
