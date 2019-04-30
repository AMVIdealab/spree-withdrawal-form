module Spree
  class WithdrawalFormMailer < BaseMailer
    def withdrawal_form_email(withdrawal_form)
      @withdrawal_form = withdrawal_form
      subject = "Richiesta recesso ordine TTattà Go numero: " +  "#{@withdrawal_form.order_number}"
      mail(to: "support@ttattago.com", from: @withdrawal_form.email, subject: subject)
    end
  end
end
