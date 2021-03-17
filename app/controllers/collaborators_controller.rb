class CollaboratorsController < ApplicationController
    def index
        @collaborators = Collaborator.all 
        render json: @collaborators
    end
    
    def show
        @collaborator = Collaborator.find(params[:id])
        render json: @collaborator
    end
    
    def create
        collaborator = Collaborator.create(collaborator_params)
        render json: collaborator
    end
    
    def destroy
        collaborator = Collaborator.find_by(id: params[:id])
        collaborator.destroy!
        render json: {}
    end
    
    private
    
    def collaborator_params
        params.permit(:user_id, :project_id)
    end
end
