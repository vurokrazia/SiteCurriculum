class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.attachment :img
      t.references :user, foreign_key: true
      t.references :myskill, foreign_key: true

      t.timestamps
    end
  end
end
