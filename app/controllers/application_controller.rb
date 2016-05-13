class ApplicationController < ActionController::API
  def index
    @projects = Project.all

    render json: @projects
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
