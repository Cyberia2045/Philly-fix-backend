class IssueUsersController < ApplicationController
  def index
      user = User.find(params[:id])
      issues = user.issues
      issues_json = issues.as_json
      issues_json.each_with_index do |issue, index|
          issue[:users] = issues[index].users
          issue[:dispatchers] = issues[index].dispatchers
          issue[:image_url] = issues[index].image.url
      end
      render json: issues_json
  end

  def show
  end

  def create
      existing = IssueUser.where(issue_user_params)[0]
      if existing != nil
          return
      end
      join = IssueUser.new(issue_user_params)
      if join.save!
          issues = Issue.all
          issues_json = issues.as_json
          issues_json.each_with_index do |issue, index|
              issue[:users] = issues[index].users
              issue[:dispatchers] = issues[index].dispatchers
              issue[:image_url] = issues[index].image.url
          end
          render json: issues_json
      end
  end

  def update
  end

  def destroy
      IssueUser.where(issue_id: params[:id], user_id: params[:user_id])[0].destroy
      issues = Issue.all
      issues_json = issues.as_json
      issues_json.each_with_index do |issue, index|
          issue[:users] = issues[index].users
          issue[:dispatchers] = issues[index].dispatchers
          issue[:image_url] = issues[index].image.url
      end
      render json: issues_json
  end

  private

  def issue_user_params
      params.require(:issue_user).permit(:user_id, :issue_id)
  end

end
