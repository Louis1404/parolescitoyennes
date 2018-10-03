class Message
  include ActiveModel::Model
  attr_accessor :prenom, :nom, :email, :telephone, :titre, :contenu
  validates :prenom, :nom, :email, :titre, :contenu, presence: true
end
