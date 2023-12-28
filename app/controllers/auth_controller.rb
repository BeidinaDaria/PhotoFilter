class AuthController < ApplicationController
    def new
        user = User.new
        #redirect_to '/'
    end
end