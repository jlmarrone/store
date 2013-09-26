class Product < ActiveRecord::Base
	validates :name, :price, presence: true
	validates :name, uniqueness: true
  validates :avatar, :attachment_presence => true

  has_attached_file :avatar, 
  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
