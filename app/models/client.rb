require 'valid_formats'
class Client < ActiveRecord::Base
  validates :first_name, :last_name, :phone, :birthdate, :paymentdate, :address, presence: true
  validates :email, presence: true,
                    format: { with: ValidFormats::EMAIL,
                              message: 'Este email no tiene el formato valido' }
  #Methods
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.first_and_last_names
    all.map{ |client| client.full_name }
  end

  def with_expired_payment_date
    select{ |client| client.paymentdate.next_month < Date.today }
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['lower(first_name) || lower(last_name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
end
