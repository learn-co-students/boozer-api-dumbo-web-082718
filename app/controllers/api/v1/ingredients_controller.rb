module Api
  module V1
    class IngredientsController < ApplicationController
      
      
      def index
        render json: Ingredient.all
      end
   
      # def create
      #   ingredient = Ingredient.create!(ingredient_params)
      #   if ingredient
      #     render json: ingredient
      # end
      
    
    
      # private

      # def ingredient_params
      #   params.require(:ingredient).permit(:name)
      # end
    
    end
  end
end
      