class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def quinoussommes
  end

  def mentionslegales
  end
end
