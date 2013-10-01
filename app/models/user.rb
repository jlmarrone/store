class User < ActiveRecord::Base
	include User::Validations
  include User::Behaviours
end
