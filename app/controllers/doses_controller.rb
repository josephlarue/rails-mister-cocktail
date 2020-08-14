class DosesController < ApplicationController

    def index
        @cocktail = Cocktail.find(params[:cocktail_id])
        @doses = Dose.all
    end

    def show
        @dose = Dose.find(params[:id])
    end

    def new
        # we need @restaurant in our `simple_form_for`
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new
    end

    def create
        @dose = Dose.new(dose_params)
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose.cocktail = @cocktail
        if @dose.save
          redirect_to cocktail_path(@cocktail)
        else
          redirect_to cocktail_path(@cocktail)
        end
      end

      def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
        redirect_to cocktail_path(@dose.cocktail)
      end
    
      private
    
      def dose_params
        params.require(:dose).permit(:description, :ingredient_id, :photo)
      end

end
