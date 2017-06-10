class DispatchersController < ApplicationController
  def index

  end

  def show
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
      params.require(:dispatcher).permit(:first_name, :last_name, :email, :password, :department)
  end
end
