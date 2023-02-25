class ClientsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        client = Client.find_by(id: params[:id])
        if client
            render json: client, include: :memberships
          else
            render_not_found_response
        end        
    end

    def render_not_found_response
        render status: :not_found
    end

end
