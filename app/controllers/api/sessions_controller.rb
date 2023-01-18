module Api
  class SessionsController < ApplicationController
    def create
      @user = User.find_by(email: params[:user][:email])

      if @user && (BCrypt::Password.new(@user.password) == params[:user][:password])
        session = @user.sessions.create
        cookies.permanent.signed[:airbnb_session_token] = {
          value: session.token,
          httponly: true
        }

<<<<<<< HEAD
        render 'api/sessions/create', status: :created
      else
        render json: { success: false }, status: :bad_request
=======
        render 'api/sessions/create'
      else
        render json: {
          success: false
        }
>>>>>>> 39c46d16aa142e15f83696bc35785e6188988778
      end
    end

    def authenticated
      token = cookies.signed[:airbnb_session_token]
      session = Session.find_by(token: token)

      if session
        @user = session.user
<<<<<<< HEAD
        render 'api/sessions/authenticated', status: :ok
      else
        render json: { authenticated: false }, status: :bad_request
=======
        render 'api/sessions/authenticated'
      else
        render json: {
          authenticated: false
        }
>>>>>>> 39c46d16aa142e15f83696bc35785e6188988778
      end
    end

    def destroy
      token = cookies.signed[:airbnb_session_token]
      session = Session.find_by(token: token)

      if session&.destroy
<<<<<<< HEAD
        render json: { success: true }, status: :ok
=======
        render json: {
          success: true
        }
>>>>>>> 39c46d16aa142e15f83696bc35785e6188988778
      end
    end
  end
end
