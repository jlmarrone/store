class Product < ActiveRecord::Base
	validates :name, :price, presence: true
	validates :name, uniqueness: true
  validates :avatar, :attachment_presence => true

  has_attached_file :avatar,
  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  after_save :send_notification_email

private
	def send_notification_email
		ProductWorker.perform_async(id)
	end
end
