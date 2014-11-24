class PaymentsController < ApplicationController
  
  def create
  	@payment = Payment.new(payment_params)
  	if @payment.save
  	   flash[:notice]  = "Payment Completed" 		
       redirect_to :root
    else
      flash[:notice]  = "Payment Failed"  	
      redirect_to :root     
    end

  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
  ## Strong Parameters 
  def payment_params
    params.require(:payment).permit(:rent,:parking,:late_fee,:other,:application_fee,:deposit,:move_in_other,:promo_code,:total,:user_id)
  end

end
