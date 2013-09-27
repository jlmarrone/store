class Notifier < ActionMailer::Base
  default from: "jlmarrone@gmail.com"
  def product_created(product)
  	@product 	 = product
  	@recipient = "jlmarrone@gmail.com"
  	mail(to: @recipient,
         subject: "[Product Created] Welcome #{@recipient}")
  end
end
