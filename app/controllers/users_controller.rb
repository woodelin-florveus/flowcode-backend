class UsersController < ApplicationController
    def index
        @users = User.all

        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end

    def get_all_names
        @users = User.pluck(:name)
        render json: @users
    end

end
