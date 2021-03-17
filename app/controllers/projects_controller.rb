class ProjectsController < ApplicationController
    def index
        @projects = Project.all 
    
        render json: @projects
    end
    
    def show
        @project = Project.find(params[:id])
    
        render json: @project
    end
    
    def create
        project = Project.create(project_params)
        render json: project
    end
    
    def update
        project = Project.find_by(id: params[:id])
        project.update(project_params)
    
    end
    
    def destroy
        project = Project.find_by(id: params[:id])
        project.destroy!
        render json: {}
    end
    
    private
    
    def project_params
        params.permit(:user_id, :title, :project_type, :location, :start_date, :duration)
    end
end
