module Spree
  class WithdrawalFormsController < Spree::StoreController
    
    def new
      @withdrawal_form = WithdrawalForm.new 
    end
    
    def create
       @withdrawal_form = WithdrawalForm.new(withdrawal_form_params)
       if @withdrawal_form.save
          WithdrawalFormMailer.withdrawal_form_email(@withdrawal_form).deliver_later 
          flash[:success] = 'Modulo di recesso inviato correttamente'
          redirect_to spree.root_path      
       else
         flash.now[:danger] = 'Non è stato possibile inviare il modulo di recesso'
        render 'new'
       end
    end
    
    private 
    def withdrawal_form_params
      params.require(:withdrawal_form).permit(:service_name, :order_number, :order_date, :last_name, :name, :email, :address)
    end  

  end 
end
