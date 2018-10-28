class RemoveColumnoCurriculum3 < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :curriculums, :experience, :title
  end

  def self.down
    # rename back if you need or do something else or do nothing
    rename_column :curriculums, :title, :experience
  end
end
