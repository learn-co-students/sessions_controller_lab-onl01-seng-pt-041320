class SessionsController < ApplicationController
    def new
    end

    def create
    #redirects to the login page if :name is nil or redirects to login page if :name is empty
        if params[:name] == nil || params[:name] == ""
            redirect_to '/login'
        else 
        #sets session[:name] if :name was given
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
    #leaves session[:name] nil if it was not set
    #clears session[:name] if it was set
        if session[:name] = params[:name]
            session[:name] = nil
        end
    end
end