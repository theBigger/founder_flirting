class PagesController < ApplicationController
  before_filter :authenticate_user!, :only => [:dashboard]

  def frontpage
  end

  def story
  end

  def dashboard
  end
end
