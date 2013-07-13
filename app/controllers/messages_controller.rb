# -*- coding: utf-8 -*-
class MessagesController < ApplicationController
  # GET /messages/new
  # GET /messages/new.json
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(params[:message])
    @message.save
    MessageMailer.message_email(@message).deliver
    redirect_to root_path, notice: "已发送信息，谢谢！"
  end
end
