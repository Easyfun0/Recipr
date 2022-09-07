class RecipesController < ApplicationController
    def index
        @recipe = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            flash[:notice] = 'Added'
            redirect_to '/'
        else
            render :new
        end
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params) 
            flash[:notice] = 'Updated'
            redirect_to '/'
        else
            render :edit
        end
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to '/', notice: 'Deleted'
    end

    private
        def recipe_params
            params.require(:recipe).permit(:name, :date, :kind, :price, :content)
        end
    end