class UserController < ApplicationController

    def show
        @photos=Photo.where(user_id: params[:id])
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
    
end