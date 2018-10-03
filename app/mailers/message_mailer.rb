class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
      @prénom = message.prenom
      @nom = message.nom
      @email = message.email
      @téléphone = message.telephone
      @titre = message.titre
      @contenu = message.contenu

      mail to: "louisburette14@gmail.com", from: message.email
    end
end
