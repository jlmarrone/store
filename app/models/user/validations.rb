class User 
	module Validations
    extend ActiveSupport::Concern
		included do
			validates :username, presence: true, on: :create, :length => { :maximum => 16 }

			validates_uniqueness_of   :email,    :case_sensitive => false, :allow_blank => true, :if => :email_changed?
      validates_presence_of     :email,    :on => :create, :message => "^Please enter your email address."
      validates_format_of       :email,    :with  => Devise.email_regexp, :allow_blank => false, :if => :email_changed?,
                                :message => "^Please check that your email address is entered correctly."

      validates :password, presence: true, length: {minimum: 5, maximum: 120}, on: :create
      validates :password_confirmation, presence: true, length: {minimum: 5, maximum: 120}, on: :create
		end
 	end
end