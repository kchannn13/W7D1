class SessionsController < ApplicationRecord
    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        @user.reset_session_token!
        redirect_to cats_url
    end

    def destroy
    end
end