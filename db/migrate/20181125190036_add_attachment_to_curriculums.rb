class AddAttachmentToCurriculums < ActiveRecord::Migration[5.1]
  def change
    add_attachment :curriculums, :c_image
  end
end
