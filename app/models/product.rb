class Product < ApplicationRecord

	after_save :notify_webhooks

	def notify_webhooks
    webhooks = Webhook.all
    webhooks.each do |webhook|
      HTTParty.post(
        webhook.url,
        body: { webhook: webhook.name, data: self.attributes }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end
end
