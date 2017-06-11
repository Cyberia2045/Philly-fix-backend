class IssueUsersController < ApplicationController
  def index
    #   render json: IssueUser.where(user_id: params[:user_id])
  end

  def show
    #   render json: IssueUser.where(issue_id: params[:issue_id])
  end

  def create
      existing = IssueUser.where(user_id: params[:user_id], issue_id: params[:issue_id]).first
      if existing != nil
          join = IssueUser.new(issue_user_params)
          if join.save!
              render json: Issue.find(params[:issue_id])
          end
      end
  end

  def update
  end

  def destroy
  end

  private

  def issue_user_params
      params.require(:issue_user).permit(:user_id, :issue_id)
  end

end
