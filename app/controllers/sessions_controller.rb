class SessionsController < ApplicationController
    def create

        if params[:name].nil? || params[:name] == ""
            redirect_to action: "new"
        else

            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end
end
