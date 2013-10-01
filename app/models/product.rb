class Product < ActiveRecord::Base
	include Product::Validations
	include Product::Behaviours
	include Product::Transactions	
end
