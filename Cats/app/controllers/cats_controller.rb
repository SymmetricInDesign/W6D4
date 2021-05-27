class CatsController < ApplicationController

    def index
        @cats = Cat.all
        
        render 'index'
    end

    def show
        @cat = Cat.find(params[:id])
        render 'show'
    end

    def new
        render 'new'
    end

    def create
        @cat = Cat.create!(cat_params(params))
        redirect_to cats_url
    end

    def cat_params(params)
        params.permit(:color, :name, :sex, :description, :birth_date)
    end
end