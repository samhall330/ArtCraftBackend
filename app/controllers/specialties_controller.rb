class SpecialtiesController < ApplicationController
    def index
        specialities = Speciality.all
        render json: specialities
    end

    def create
        @speciality = Speciality.create(speciality_params)
        render json: @speciality
    end
    
    def destroy
        speciality = Speciality.find_by(id: params[:id])
        speciality.destroy!
        render json: {}
    end

    private

    def speciality_params
        params.permit(:user_id, :spec_name, :pro_level)
    end
end
