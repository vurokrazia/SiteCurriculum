class RemoveColumnTypeExperienceToCurriculums < ActiveRecord::Migration[5.1]
  def change
    remove_column :curriculums, :type_exp
  end
end
