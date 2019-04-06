class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :description
      t.string :hours
      t.string :price
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end
