class IssuesController < ApplicationController
  def index
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

  def show
      issue = Issue.find(params[:id])
      issue_json = issue.as_json
      issue_json[:users] = issue.users
      issue_json[:dispatchers] = issue.dispatchers
      render json: issue_json
  end

  def create
      issue = Issue.new(issue_params)
      if issue.save!
        if params[:userType] == 'user'
            join = IssueUser.new(issue_id: issue.id, user_id: params[:id])
        elsif params[:userType] == 'dispatcher'
            join = IssueDispatcher.new(issue_id: issue.id, dispatcher_id: params[:id])
        else
            return
        end
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
