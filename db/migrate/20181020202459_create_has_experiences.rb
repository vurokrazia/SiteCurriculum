class CreateHasExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :has_experiences do |t|
      t.references :experience, foreign_key: true
      t.references :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
