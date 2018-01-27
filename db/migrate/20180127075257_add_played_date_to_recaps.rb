class AddPlayedDateToRecaps < ActiveRecord::Migration[5.1]
  def change
    add_column :session_recaps, :played_on, :date
  end
end
