# == Schema Information
#
# Table name: experiences
#
#  id         :integer          not null, primary key
#  title      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Experience < ApplicationRecord
  belongs_to :user
  has_many :curriculums, :dependent => :delete_all
end
