# == Schema Information
# Schema version: 20110508222521
#
# Table name: items
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  content     :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Item < ActiveRecord::Base

  belongs_to :user

end
