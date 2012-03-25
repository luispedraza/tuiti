class SessionsController < ApplicationController
  def new
    
  end
  def create
    # Recuperamos, de la lista de parámetros, el email
    user = User.find_by_email(params[:session][:email])
    # Si el usuario existe en la base de datos, comprobamos su contraseña
    if user && user.authenticate(params[:session][:password])
      # El usuario inicia sesión
      sign_in user
      redirect_to user
    else
      # Contraseña incorrecta o usuario no existente
      flash.now[:error] = "Usuario o contrasenia incorrectos"
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
