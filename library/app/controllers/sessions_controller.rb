class SessionsController < ApplicationController
    def new
    end
  
    def create
      user = User.find_by(email: params[:session][:email])

      if user && user.password == params[:session][:password]
        session[:user_id] = user.id
        redirect_to root_path, notice: 'Login bem-sucedido!'
      else
        flash[:alert] = 'Combinação de e-mail/senha inválida'
        redirect_to login_path
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to login_path, notice: 'Logout bem-sucedido!'
    end
  end
  