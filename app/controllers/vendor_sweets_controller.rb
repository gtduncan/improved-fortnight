class VendorSweetsController < ApplicationController

    def create
        vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if vendor_sweet.save
            render json: vendor_sweet, status: 201
        else
            render json: ["error": "validation errors"], status: 422
        end
    end

    def destroy
        vendor_sweet = VendorSweet.find_by(id: params[:id])
        if vendor_sweet
            vendor_sweet.destroy
            head :no_content, status: 204
        else
            render json: ["error": "VendorSweet not found"], status: 404
        end
    end


    private

    def vendor_sweet_params
        params.permit(:price, :vendor_id, :sweet_id)
    end
end
