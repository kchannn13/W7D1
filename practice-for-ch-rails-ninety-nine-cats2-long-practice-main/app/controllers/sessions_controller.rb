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
        current_user.reset_session_token! if !current_user.nil?
        session[:session_token] = nil
        @current_user = nil
    end
end