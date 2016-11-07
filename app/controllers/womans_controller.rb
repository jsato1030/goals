class WomansController < ApplicationController
before_action :authenticate_user!, only: :index
  def index
    @woman = Woman.new
  end

  def create
    Woman.create(create_params)
    redirect_to controller: :shops, action: :index
  end

  def search
    @women = Woman.where(user_id: current_user.id)
  end

  def edit
    @woman = Woman.find(params[:id])
  end

  def update
    woman = Woman.find(params[:id])
    if woman.user_id == current_user.id
      woman.update(create_params)
    end
    redirect_to controller: :shops, action: :index
  end
  private
  def create_params
    params.require(:woman).permit(:name, :age, :job, :rank, :character, :memo).merge(user_id: current_user.id)
  end
end
