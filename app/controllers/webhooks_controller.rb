class WebhooksController < ApplicationController

  def create
    if params[:webhook]
      response = HTTParty.post("http://localhost:3003/save_product", body: params[:data].to_json, headers: { 'Content-Type' => 'application/json' })

      if response.success?
        render json: { status: 'Success' }
      else
        render json: { status: 'Failed', error: response.code }
      end
    else
      render json: { status: 'Not Found', error: 'Webhook not found' }
    end
  end

  def save_product
  	new_product = NewProduct.new
  	new_product.name = params[:name]
  	new_product.description = params[:description]
  	new_product.price = params[:price]
  	new_product.save!
  	user = User.first # current user will come here
	  ProductNotificationMailer.new_changes_notification(user, new_product).deliver_now

  	render json: {:success => true}
  end

end
