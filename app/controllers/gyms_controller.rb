class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def show 
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    end

    def destroy
        gym = Gym.find_by(id: params[:id])
        if gym 
            gym.destroy
            head :no_content
        else
            render json: { error: "Gym not found" }, status: :not_found
        end
    end

    private 

    def render_not_found
        render json: { error: "Gym not found" }, status: :not_found
    end
end
