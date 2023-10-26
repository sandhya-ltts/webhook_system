class ProductsController < ApplicationController

	def create
		product = Product.new(product_params)
		product.save!
		render json: product
	end

	def update
		product = Product.where(id: params[:id])
		product.update(product_params)
	end


	private

	def product_params
		params.require(:product).permit(:name, :description, :price)
	end



end
