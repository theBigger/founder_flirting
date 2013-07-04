# == Schema Information
#
# Table name: buzzs
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Buzz < ActiveRecord::Base
  attr_accessible :content
end
