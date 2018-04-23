module Othello
  class UsersController < ApplicationController

    # GET /users
    def index
      @users = User.all

      render json: @users
    end

    # GET /users/"user"
    def show
      @user = set_user
      render json: @user
    end

    # POST /users
    def create
      @user = User.new(user_params)

      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    # DELETE /users/User 1
    def destroy
      @user = set_user
      @user.destroy
    end

    # PATCH/PUT /users/"user"
    def update
      @user = set_user
      if @user.update(update_user_params)
        render json: @user, status: :updated
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :nickname, :email, :pass)
    end

    def update_user_params
      params.require(:user).permit(:username, :nickname, :email, :pass)
    end

  end
end
