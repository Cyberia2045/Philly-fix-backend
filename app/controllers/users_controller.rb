class UsersController < ApplicationController
  def index
      user = User.where(email: params[:email]).first
      if user != nil
        if user.password === params[:password]
          session[:user_id] = user.id
          render json: user
        end
      end
  end

  def show
      user = User.find(params[:id])
      user_json = user.as_json
      user_json[:issues] = user.issues
      render json: user_json
  end

  def create
      user = User.new(user_params)
      if user.save!
          session[:user_id] = user.id
          render json: user
      end
  end

  def update
  end

  def destroy
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
