# == Schema Information
#
# Table name: myskills
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Myskill < ApplicationRecord
  has_one :tool
end
