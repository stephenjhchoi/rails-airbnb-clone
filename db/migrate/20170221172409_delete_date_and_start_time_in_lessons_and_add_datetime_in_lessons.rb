class DeleteDateAndStartTimeInLessonsAndAddDatetimeInLessons < ActiveRecord::Migration[5.0]
  def change
    remove_column :lessons, :start_time
    remove_column :lessons, :date
    add_column :lessons, :start_date_time, :datetime
  end
end
