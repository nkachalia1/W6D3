class UsersController < ApplicationController
    def create
        render json: params
    end

    def show
        render json: params
    end

    def create
        user = User.new(params.require(:user).permit(:name, :email))
        if user.save
          render json: user
        else
          render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        user = User.new(params.require(:user).permit(:name, :email))

    end
end
