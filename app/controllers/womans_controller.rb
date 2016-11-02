class WomansController < ApplicationController
before_action :authenticate_user!, only: :index
  def index
    @woman = Woman.new
  end

  def create
    Woman.create(create_params)
    redirect_to controller: :shops, action: :index

  end

  private
  def create_params
    params.require(:woman).permit(:name, :age, :job, :rank, :character, :memo)
  end
end
