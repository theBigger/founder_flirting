# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  body       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  attr_accessible :body, :email, :name
end
