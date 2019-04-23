module Spree
  class WithdrawalFormsController < Spree::StoreController
    
    def new
      
    end

    def create
    end
    
    private
    
    def withdrawal_form_params
      params.require(:withdrawal_form).permit(:service_name, :order_number, :order_date, :last_name, :name, :email, :address)
    end  

  end 
end
