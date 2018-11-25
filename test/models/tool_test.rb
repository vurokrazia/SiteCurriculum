# == Schema Information
#
# Table name: tools
#
#  id                   :integer          not null, primary key
#  title                :string
#  t_image_file_name    :string
#  t_image_content_type :string
#  t_image_file_size    :bigint(8)
#  t_image_updated_at   :datetime
#  description          :text
#  user_id              :integer
#  skill_id             :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class ToolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
