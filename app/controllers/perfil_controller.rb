class PerfilController < ApplicationController
  def index
    @perfil = User.all
  end
end
