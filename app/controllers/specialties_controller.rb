class SpecialtiesController < ApplicationController
    def index
        specialties = Specialty.all
        render json: specialties
    end

    def create
        @speciality = Specialty.create(speciality_params)
        render json: @speciality
    end
    
    def destroy
        speciality = Specialty.find_by(id: params[:id])
        speciality.destroy!
        render json: {}
    end

    private

    def speciality_params
        params.permit(:user_id, :name, :pro_level)
    end
end
