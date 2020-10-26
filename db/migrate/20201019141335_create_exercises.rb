class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :text
      t.string :icon
      t.string :image
      t.integer :menu_id
      t.timestamps
    end
  end
end
