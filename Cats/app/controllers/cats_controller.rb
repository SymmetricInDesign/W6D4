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
        @cat = Cat.new()
        render 'edit'
    end

    def create
        @cat = Cat.create!(cat_params(params))
        redirect_to cats_url
    end

    def edit
        @cat = Cat.find(params[:id])
        # redirect_to edit_cat_path(@cat.id)
        render 'edit'
    end

    def update
        cat = Cat.find(params[:id])
        if cat.update(cat_params(params))
            redirect_to cats_url
        else
            cat.errors.full_messages :unprocessable_entity
        end
    end

    def cat_params(params)
        params.permit(:color, :name, :sex, :description, :birth_date)
    end


end