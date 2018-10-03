# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact_me
  def contact_me
    message = Message.new prenom: 'prénom',
                          nom: 'nom',
                          email: 'adresseemail@example.org',
                          telephone: '0612345678',
                          titre: 'titre de la proposition',
                          contenu: 'Contenu de la proposition'

    MessageMailer.contact_me message
  end

end
