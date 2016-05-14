class ProjectsController < ApplicationController
  def count
    render json: Project.count
  end

  def index

    if (params[:search])
      @projects = Project.where('name LIKE :search OR description LIKE :search OR author LIKE :search OR author_url LIKE :search', search: "%#{params[:search]}%").order('name')
    else
      # @projects = Project.all
      @projects = Project.paginate(:page => params[:page], :per_page => 30).order('created_at DESC')
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
    project = Project.find(params[:id])
    render json: project
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
    params.require(:project).permit(:name, :description, :author, :author_url, :content)
  end
end
