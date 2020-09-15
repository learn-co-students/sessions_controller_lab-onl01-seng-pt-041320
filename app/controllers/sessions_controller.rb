class SessionsController < ApplicationController
  protect_from_forgery prepend: true

  def new
    
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to login_path
    else 
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end
end
