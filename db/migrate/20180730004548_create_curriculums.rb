class CreateCurriculums < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculums do |t|
      t.string :experience
      t.string :description_experience
      t.string :link
      t.string :start_date
      t.string :finish_date
      t.string :position
      t.string :type_exp
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
