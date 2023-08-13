class CheckBalance
  include Interactor
  def call
    user = UserRepository.find(context.payment_params[:user_id])
    if user&.balance >= context.payment_params[:amount]
      context.user = user
    else
      context.fail!
    end
  end
end