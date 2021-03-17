class EquipmentController < ApplicationController
    def index
        equipments = Equipment.all
        render json: equipments
    end

    def create
        @equipment = Equipment.create(equipment_params)
        render json: @equipment
    end
    
    def destroy
        equipment = Equipment.find_by(id: params[:id])
        equipment.destroy!
        render json: {}
    end

    private

    def equipment_params
        params.permit(:user_id, :equip_link, :equip_name)
    end
end
