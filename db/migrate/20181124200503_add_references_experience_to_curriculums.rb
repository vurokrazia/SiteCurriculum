class AddReferencesExperienceToCurriculums < ActiveRecord::Migration[5.1]
  def change
    remove_column :curriculums, :experience #Titulo de experiences
    add_reference :curriculums, :experience
    add_column    :curriculums, :title, :string
  end
end
