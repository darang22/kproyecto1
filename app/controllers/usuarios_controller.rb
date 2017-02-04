class UsuariosController < ApplicationController

    def new
        @usuario = Usuario.new
    end


    def create 
      @usuario = Usuario.new(user_params) 
      if @usuario.save 
        session[:usuario_id] = @usuario.id 
        redirect_to '/' 
      else 
        redirect_to '/signup' 
      end 
    end

end


private
  def user_params
    params.require(:usuario).permit(:nombre, :email, :password)
  end