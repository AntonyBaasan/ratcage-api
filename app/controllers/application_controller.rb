class ApplicationController < ActionController::API
  def index

    if (params[:search])
      @projects = Project.where('name LIKE :search OR description LIKE :search OR author LIKE :search', search: "%#{params[:search]}%")
    else
      @projects = Project.all
    end

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

  private
  def person_params
    params.require(:@projects).permit(:name, :description, :author, :search)
  end
end
