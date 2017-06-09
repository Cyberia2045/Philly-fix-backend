class IssuesController < ApplicationController
  def index
  end

  def show
  end

  def create
      issue = Issue.new(issue_params)
      if user.save!
          render json :issue
      end
  end

  def update
  end

  def destroy
  end

  private
  def issue_params
      params.require(:issue).permit(:category, :neighborhood, :lat, :lng, :description, :status)
  end
end
