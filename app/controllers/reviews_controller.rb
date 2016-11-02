class ReviewsController < ApplicationController
before_action :authenticate_user!, only: :index
  def index
  end

  def search
    @shops = Shop.where('name LIKE(?)', "%#{params[:name]}%").limit(20)
  end

  def show
  end

  def create
  end
end
