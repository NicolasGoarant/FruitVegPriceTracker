# app/controllers/prices_controller.rb
class PricesController < ApplicationController
  before_action :set_product

  def create
    @price = @product.prices.new(price_params)

    if @price.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @product, notice: 'Prix enregistré avec succès.' }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])  # Récupère le produit via l'URL
  end

  def price_params
    params.require(:price).permit(:price, :date, :market_type)
  end
end




