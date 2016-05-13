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
    project = Project.new(project_params)

    if project.save
      render json: project
    else
      render json: project.errors, status: 422
    end
  end

  def show
  end

  def update
    project = Project.find(params[:id])

    if project.update(project_params)
      render json: project
    else
      render json: project.errors, status: 422
    end
  end

  def destroy
    project = Project.find(params[:id])
    # Option A: just delete "project.destroy"
    # Option B: just delete "project.archive" ()

    head 204
  end

  private
  def project_params
    params.require(:@projects).permit(:name, :description, :author, :content )
  end
end
