class FlirtsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @flirt = Flirt.new(params[:flirt])

    if @flirt.project
      @flirt.receiver = @flirt.project.user
    end

    @flirt.sender = current_user
    
    if @flirt.save
      if @flirt.project
        redirect_to @flirt.project
      else
        redirect_to @flirt.receiver
      end
    end
  end

  def reply
    @flirt
  end

  def received
    @flirts = current_user.received_flirts.page params[:page]
  end

  def sent
    @flirts = current_user.sent_flirts.page params[:page]
  end
end
