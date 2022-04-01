class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.references :workout, null: false, foreign_key: true
      t.string :name
      t.integer :reps
      t.integer :series

      t.timestamps
    end
  end
end
