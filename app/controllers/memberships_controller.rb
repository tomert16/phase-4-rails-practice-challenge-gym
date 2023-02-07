class MembershipsController < ApplicationController
    wrap_parameters format: []
    

    def create 
        new_membership = Membership.create!(membership_params)
        render json: new_membership, status: :created
    end

    private

    def membership_params
        params.permit(:client_id, :gym_id, :charge)
    end

    
end
