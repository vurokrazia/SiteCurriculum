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

class Tool < ApplicationRecord
  belongs_to :user
  belongs_to :myskill
  has_attached_file :img, styles: {medium: "600x960", thumb:"640x360"}, default_url: "/images/:style/images.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  scope :lenguaje, ->{where(myskill_id:1)}
  scope :frameworks, ->{where(myskill_id:2)}
  scope :others, ->{where(myskill_id:3)}
end
