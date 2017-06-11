class IssuesController < ApplicationController
  def index
      issues = Issue.all
      issues_json = issues.as_json
      issues_json.each_with_index do |issue, index|
          issue[:users] = issues[index].users
      end
      render json: issues_json
  end

  def show
      issue = Issue.find(params[:id])
      issue_json = issue.as_json
      issue_json[:users] = issue.users
      render json: issue_json
  end

  def create
      issue = Issue.new(issue_params)
      if issue.save!
          join = IssueUser.new(issue_id: issue.id, user_id: params[:user_id])
          if join.save!
              render json: Issue.all
          end
      end
  end

  def update
  end

  def destroy
  end

  private

  def issue_params
    params.require(:issue).permit(:neighborhood, :category, :description)
  end
end
