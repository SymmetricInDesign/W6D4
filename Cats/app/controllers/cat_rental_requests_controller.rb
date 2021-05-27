class CatRentalRequestsController < ApplicationController
    def index
        CatRentalRequest.all
    end

    def new
        @cats = Cat.all
        @cat_rental_request = CatRentalRequest.new()
    end

    def create
        new_req = CatRentalRequest.new(cat_request_params(params))
        if new_req.save
            redirect_to cat_url(new_req.cat_id)
        else
            new_req.errors.full_messages :unprocessable_entity
        end
    end

    def edit
        @cat_rental_request = CatRentalRequest.find(params[:id])
        @cat = Cat.find(@cat_rental_request.id)
        @cats = Cat.all
    end

    def show
        
    end

    def cat_request_params(params)
        params.permit(:start_date, :end_date, :cat_id, :status)
    end
end