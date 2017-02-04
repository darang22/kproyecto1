class SessionsController < ApplicationController

    def new
    end

    def create
      @usuario = Usuario.find_by_email(params[:session][:email])
      if @usuario && @usuario.authenticate(params[:session][:password])
        session[:usuario] = @usuario.id
        redirect_to '/'
      else
        redirect_to 'login'
      end 
    end

    def destroy
        session[:usuario] = nil 
        redirect_to '/' 
    end
end
