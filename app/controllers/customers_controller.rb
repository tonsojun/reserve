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

  end

end
