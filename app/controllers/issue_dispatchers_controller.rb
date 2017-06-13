class IssueDispatchersController < ApplicationController
  def index
      dispatcher = Dispatcher.find(params[:id])
      issues = dispatcher.issues
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
    join = IssueDispatcher.new(issue_dispatcher_params)
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
      IssueDispatcher.where(issue_id: params[:id], dispatcher_id: params[:dispatcher_id])[0].destroy
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

  def issue_dispatcher_params
      params.require(:issue_dispatcher).permit(:dispatcher_id, :issue_id)
  end

end
