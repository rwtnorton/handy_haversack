# == Schema Information
# Schema version: 20110508220815
#
# Table name: items
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  content     :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Item < ActiveRecord::Base
end
