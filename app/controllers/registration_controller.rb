class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user_params = params.require(:user).permit(:login, :nickname, :password, :code_word)
        User.create(user_params)
        redirect_to '/', notice: 'Вы успешно зарегистрировались!'
    end

end