# -*- coding: utf-8 -*-
class UserMailer < ActionMailer::Base
  default from: "admin@obard.com"

  def flirt_sender_email(flirt)
    @flirt = flirt
    @user = flirt.sender
    mail(to: @user.email, subject: "恭喜你，#{@user.name}给你抛回了一个媚眼")
  end

  def flirt_receiver_email(flirt)
    @flirt = flirt
    @user = flirt.receiver
    mail(to: @user.email, subject: "感谢你抛给#{@user.name}的媚眼")
  end
end
