class PerfilController < ApplicationController
  def index
    @perfil = User.find_by(id: current_user.id)
  end
end
