class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def edit

  end

  def show

  end

  def updated

  end

  def destroy

  end

  def create
    @customer = Custome.new(customer_params)
    @customer.user_id = current_user.id

    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end
  end
  
  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :phone)
  end

end
