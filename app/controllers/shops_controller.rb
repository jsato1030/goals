class ShopsController < ApplicationController
  def index
  end

  def search
  end

  def create
    Shop.create(create_params)
    redirect_to controller: :shops, action: :index
  end

  def new
    @shop = Shop.new
  end

  private
  def create_params
    params.require(:shop).permit(:name, :l, :genre, :tel, :transportation, :address, :bussiness_hours, :regslar_holiday, :card, :service_charge)
  end

end
