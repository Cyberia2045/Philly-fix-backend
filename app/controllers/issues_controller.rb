class IssuesController < ApplicationController
  def index
  end

  def show
  end

  def create
    Issue.create(issue_params)
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
