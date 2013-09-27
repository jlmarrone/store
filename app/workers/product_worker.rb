class ProductWorker
  include Sidekiq::Worker
  def perform(id)
  	product = Product.find id
  	Notifier.product_created(product).deliver!
  end
end