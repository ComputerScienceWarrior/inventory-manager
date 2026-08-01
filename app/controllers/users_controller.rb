class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :password_digest, :email)
    end
end
