module Api
  module V1
    class ProportionsController < ApplicationController
      def index
        render json: Proportion.all
      end

      def create 
        proportion = Proportion.create!(proportions_params)
          if proportion
            render :json proportion
      end

      private 

      def proportions_params
        params.require(proportion).permit(:amount, :ingredient_id, :cocktail_id))
      end
    end 
  end
end