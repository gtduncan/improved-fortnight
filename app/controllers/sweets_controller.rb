class SweetsController < ApplicationController
    def index
        sweets = Sweet.all
        render json: sweets
    end
    def show
        sweet = Sweet.find_by(id: params[:id])
        if sweet
            render json: sweet
        else
            render json: ["error": "Sweet not found"], status: 404
        end
    end
end
