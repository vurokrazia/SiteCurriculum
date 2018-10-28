# == Schema Information
#
# Table name: has_tools
#
#  id            :integer          not null, primary key
#  curriculum_id :integer
#  tool_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  myskill_id    :integer
#

class HasTool < ApplicationRecord
  belongs_to :curriculum
  belongs_to :tool
end