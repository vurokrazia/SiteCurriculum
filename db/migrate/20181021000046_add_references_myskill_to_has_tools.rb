class AddReferencesMyskillToHasTools < ActiveRecord::Migration[5.1]
  def change
  	add_reference :has_tools, :myskill, index: true
  end
end
