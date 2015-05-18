class PricesController < ApplicationController
  def create
    
    @price = Price.new(price_params)
    respond_to do |format|
      if @price.save
        @price.ingredient.price = @price.price
        @price.ingredient.save
        format.html { redirect_to ingredient_path(@price.ingredient), notice: 'Precio actualizado exitosamente!' }
      end
    end
  end

  private

  def price_params
    params.require(:price).permit(:price, :ingredient_id)
  end
end