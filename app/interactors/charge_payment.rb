class ChargePayment
  include Interactor::Organizer

  organize CheckBalance, MakePayment
end
