class ChangeDurationInLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :start_time, :time
  end
end
