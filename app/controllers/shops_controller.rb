class ShopsController < ApplicationController
before_action :authenticate_user!, only: :new
  def index
  end

  def shops_search
    @shops = Shop.where('address LIKE(?)', "%#{params[:address]}%").limit(20)
  end

  def reviews_search
    @shops = Shop.where('name LIKE(?)', "%#{params[:name]}%").limit(20)
  end

  def create
    @shop = Shop.create(create_params)
    redirect_to controller: :shops, action: :index
  end

  def new
    @shop = Shop.new
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def shops_edit_search
    @shops = Shop.where(user_id: current_user.id)
    binding.pry
  end
  private
  def create_params
    params.require(:shop).permit(:name, :l, :genre, :tel, :transportation, :address, :bussiness_hours, :regslar_holiday, :card, :service_charge)
  end

end
