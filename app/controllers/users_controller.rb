class UsersController < ApplicationController
  # def no_layout_action
  #   render layout: false
  # end
  def home
    render :layout => nil
  end
end
