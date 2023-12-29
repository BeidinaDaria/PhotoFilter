class AuthController < ApplicationController
    def new
        user = User.new
        #redirect_to '/'
    end

    def create
        user_params = params.require(:session)
        user = User.find_by(login: user_params[:login])

        if user.present?
            session[:user_id] = user.id
            redirect_to root_path
        end

    end
end