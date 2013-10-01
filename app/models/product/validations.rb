class Product
  module Validations
    extend ActiveSupport::Concern
    included do
    	validates :name, :price, presence: true
			validates :name, uniqueness: true
  		validates :avatar, :attachment_presence => true
    end
  end
end