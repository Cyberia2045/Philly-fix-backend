class DispatchersController < ApplicationController
  def index
      dispatcher = Dispatcher.where(email: params[:email]).first
      if dispatcher != nil
        if dispatcher.password === params[:password]
          session[:dispatcher_id] = dispatcher.id
          render json: dispatcher
        end
      end
  end

  def show
      dispatcher = Dispatcher.find(params[:id])
      dispatcher_json = dispatcher.as_json
      dispatcher_json[:issues] = dispatcher.issues
      render json: dispatcher_json
  end

  def create
      dispatcher = Dispatcher.new(dispatcher_params)
      if dispatcher.save!
          session[:dispatcher_id] = dispatcher.id
          render json :dispatcher
      end
  end

  def update
  end

  def destroy
  end

  private
  def dispatcher_params
      params.require(:dispatcher).permit(:first_name, :last_name, :email, :password, :department, :dispatcher_verification)
  end
end
