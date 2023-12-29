class UserController < ApplicationController

    def show
        @photos=Photo.where(user_id: params[:id])
    end
end