class ClientsController < ApplicationController

    def show 
        client = Client.find(params[:id])
        render json: client, methods: [:memberships_sum]
    end
end
