# == Schema Information
#
# Table name: tools
#
#  id               :integer          not null, primary key
#  name             :string
#  description      :text
#  img_file_name    :string
#  img_content_type :string
#  img_file_size    :integer
#  img_updated_at   :datetime
#  user_id          :integer
#  myskill_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ToolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
