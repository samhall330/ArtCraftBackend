class SoftwaresController < ApplicationController
    def index
        softwares = Software.all
        render json: softwares
    end

    def create
        @software = Software.create(software_params)
        render json: @software
    end
    
    def destroy
        software = Software.find_by(id: params[:id])
        software.destroy!
        render json: {}
    end

    private

    def software_params
        params.permit(:user_id, :soft_link, :soft_name)
    end
end
