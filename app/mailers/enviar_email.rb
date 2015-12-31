class EnviarEmail < ApplicationMailer
  default from: "support-noreply@gmail.com"
  def send_mail(disco, name, email)
    @name = name
    @email = email
    @disco = disco
    mail(to: "elton.melo.santos@gmail.com", subject: 'Mensagem recebida da aplicação Catálogo de Discos')
  end
end