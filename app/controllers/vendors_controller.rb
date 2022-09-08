class VendorsController < ApplicationController
    def index
        vendors = Vendor.all
        render json: vendors
    end
    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
            render json: vendor, serializer: VendorVendorSweetSerializer
        else
            render json: ["error": "Vendor not found"], status: 404
        end
    end
end
