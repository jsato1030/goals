class ReviewsController < ApplicationController
before_action :authenticate_user!, only: :index
  def index
  end

  def new
    @shop = Shop.find(params[:shop_id])
    @review = Review.new
  end
  

  def show
  end

  def create
    Review.create(create_params)
    redirect_to controller: :shops, action: :index
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review).merge(user_id: current_user.id, shop_id: params[:shop_id])
  end

end
