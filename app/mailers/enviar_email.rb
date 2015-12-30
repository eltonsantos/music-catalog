class EnviarEmail < ApplicationMailer
  default from: "support-noreply@gmail.com"
  def send_mail(disco)
    @disco = disco
    mail(to: "elton.melo.santos@gmail.com", subject: 'Testando o envio de email!!')
  end
end