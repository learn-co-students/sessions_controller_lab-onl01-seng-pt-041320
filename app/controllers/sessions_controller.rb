class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    if !session[:name].nil? && !session[:name].empty?
      redirect_to '/'
    else  
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name 
    redirect_to '/sessions/new'
  end
end
