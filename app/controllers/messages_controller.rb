class MessagesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to new_proposition_path, notice: "Votre avons bien reçu votre proposition et revenons vers vous très vite. Merci!"
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:prenom, :nom, :email, :telephone, :titre, :contenu)
  end
end
