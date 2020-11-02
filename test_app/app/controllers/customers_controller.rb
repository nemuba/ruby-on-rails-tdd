class CustomersController < ApplicationController
  before_action :set_customer, only: %i[edit show destroy update]

  def index
    @customers = Customer.all
  end

  def edit; end

  def show; end

  def destroy
    @customer.destroy
    redirect_to customers_url
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer, notice: 'Criado com sucesso!'
    else
      render :new
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: 'Atualizado com sucesso!'
    else
      render :edit
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:description, :price, :category_id)
  end
end
