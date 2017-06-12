class IssueUsersController < ApplicationController
  def index
      user = User.find(params[:user_id])
      render json: user.issues
  end

  def show
    #   render json: IssueUser.where(issue_id: params[:issue_id])
  end

  def create
      join = IssueUser.new(issue_user_params)
      if join.save!
          issues = Issue.all
          issues_json = issues.as_json
          issues_json.each_with_index do |issue, index|
              issue[:users] = issues[index].users
          end
          issues_json.each_with_index do |issue, index|
              issue[:dispatchers] = issues[index].dispatchers
          end
          render json: issues_json
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
