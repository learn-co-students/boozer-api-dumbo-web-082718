module Api 
  module V1

    class UsersController < ApplicationController
      
      def index 
        @users = User.all
        render :json => @users, status: :ok
      end

      def create
        @user = User.new(user_params)
      
      end

      private

      def user_params
        params.require(:user).permit(:username, :password)
      end
    end
  end 
end 
