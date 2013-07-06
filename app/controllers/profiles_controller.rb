class ProfilesController < ApplicationController
  before_filter :authenticate_user!, :only => [:update]

  def update
    current_user.profile = params[:user][:profile]
    current_user.save
    
    redirect_to profile_url(current_user)
  end

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
