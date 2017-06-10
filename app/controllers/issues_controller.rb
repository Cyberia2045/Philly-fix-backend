class IssuesController < ApplicationController
  def index
  end

  def show
  end

  def create
<<<<<<< HEAD
    Issue.create(issue_params)
=======
      issue = Issue.new(issue_params)
      if user.save!
          render json :issue
      end
>>>>>>> fe8d0e5bff109c5900ed9e380bf19dbe37635fba
  end

  def update
  end

  def destroy
  end

  private
<<<<<<< HEAD

  def issue_params
    params.require(:issue).permit(:neighborhood, :category, :description)
  end

=======
  def issue_params
      params.require(:issue).permit(:category, :neighborhood, :lat, :lng, :description, :status)
  end
>>>>>>> fe8d0e5bff109c5900ed9e380bf19dbe37635fba
end
