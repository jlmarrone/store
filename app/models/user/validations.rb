class User 
	module Validations
		included do
			validates :username, presence: true, on: :create, :length => { :maximum => 16 }

			validates_uniqueness_of   :email,    :case_sensitive => false, :allow_blank => true, :if => :email_changed?
      validates_presence_of     :email,    :on => :create, :message => "^Please enter your email address."
      validates_format_of       :email,    :with  => Devise.email_regexp, :allow_blank => false, :if => :email_changed?,
                                :message => "^Please check that your email address is entered correctly."

      validates_presence_of     :password, :on => :create, :message => "^The password can't be blank"
      validates_confirmation_of :password, :on => :create, :message => "^The passwords didn't match. Please reenter."
      validates_length_of       :password, :within => Devise.password_length, :allow_blank => true
		end
 	end
end