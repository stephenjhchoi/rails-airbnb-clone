class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :category
      t.string :price
      t.date :date
      t.string :duration
      t.text :description
      t.string :calories
      t.string :neighborhood
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
