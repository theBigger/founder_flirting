# -*- coding: utf-8 -*-
class ProfilesController < ApplicationController
  before_filter :authenticate_user!, :only => [:update]

  def update
    begin
      current_user.profile = params[:user][:profile]
      current_user.save!
    
      redirect_to profile_url(current_user)
    rescue => e
      redirect_to edit_user_registration_url, :flash => {:error => "个人资料错误：" + e.to_s}
    end
  end

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
