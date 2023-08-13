class PaymentFacade
  attr_accessor :payment
  def initialize(payment)
    self.payment = payment
  end

  def to_h
    {
      amount: payment.amount,
      currency: payment.currency,
      timestamp: payment.created_at
    }
  end

end