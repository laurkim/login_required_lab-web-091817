class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !session[:name] || session[:name] == ''
      redirect_to login_path
    else
      # byebug
      redirect_to '/secret'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
