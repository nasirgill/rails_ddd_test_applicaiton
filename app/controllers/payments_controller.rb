class PaymentsController < ApplicationController

  def create
    charge_payment = ChargePayment.call(payment_params: permitted_params)
    if charge_payment.success?
      render status: 200, json: ApplicationFacade.new(
        [
          UserFacade.new(charge_payment.user),
          PaymentFacade.new(charge_payment.payment)
        ]
      )
    else
      render status: 404
    end
  end


  private
  def permitted_params
    params.require(:payment).permit!
  end
end