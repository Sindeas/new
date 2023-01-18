module Api
  class UsersController < ApplicationController
    def create
      @user = User.new(user_params)

      if @user.save
<<<<<<< HEAD
        render 'api/users/create', status: :created
      else
        render json: { success: false }, status: :bad_request
=======
        render 'api/users/create'
      else
        render json: { success: false }
>>>>>>> 39c46d16aa142e15f83696bc35785e6188988778
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :username)
    end
  end
end
