# -*- coding: utf-8 -*-
class MessageMailer < ActionMailer::Base
  default from: "cfk.quan@gmail.com"

  def message_email(message)
    @message = message
    mail(to: "cfk.quan@gmail.com", subject: "新反馈")
  end
end
