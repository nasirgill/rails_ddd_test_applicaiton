class MakePayment
  include Interactor

  def call
    payment = context.user.payments.create(
      context.payment_params.to_h.with_indifferent_access.extract!(:amount, :currency)
    )

    if payment.persisted?
      context.user.update(balance: context.user.balance.to_f - payment.amount.to_f)
      context.payment = payment
    else
      context.fail!
    end
  end
end