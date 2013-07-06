class ProfilesController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
