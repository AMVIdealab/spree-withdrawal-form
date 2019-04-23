module Spree
  class WithdrawalForm < Spree::Base
    validates :service_name, :order_number, :order_date, :last_name, :name, :email, :address, presence: true
  end
end
