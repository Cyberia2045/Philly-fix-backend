class SessionsController < ApplicationController
  def destroy
      if params[:id] == 'user'
          session[:user_id] = nil
      elsif params[:id] == 'dispatcher'
          session[:dispatcher_id] = nil
      end
  end
end
