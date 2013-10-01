class Product
  module Transactions
    extend ActiveSupport::Concern
    	included do
    		after_save :send_notification_email
    	end
    protected
    	def send_notification_email
				ProductWorker.perform_async(id)
			end
  end
end