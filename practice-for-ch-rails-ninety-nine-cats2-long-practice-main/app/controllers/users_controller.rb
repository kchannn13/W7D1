class UsersController < ApplicationRecord
    def new
        @user = User.new

        render :new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to cats_url
        else
            puts @user.error.full_messages
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end