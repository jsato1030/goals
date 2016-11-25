class ShopsController < ApplicationController
before_action :authenticate_user!, only: [:new, :shops_edit_search]
  def index
  end

  def shops_search
    # @shops = Shop.where('address LIKE(?)', "%#{params[:name_or_address_cont]}%").limit(20)
    @shops = Shop.ransack(name_or_address_cont: params[:name_or_address_cont]).result
    

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
    @shops = Shop.all
  end
  private
  def create_params
    params.require(:shop).permit(:name, :image, :l, :counter, :genre, :tel, :transportation, :address, :bussiness_hours, :regslar_holiday, :card, :service_charge).merge(user_id: current_user.id)
  end

end
