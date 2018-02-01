class ChangeSessionRecapPlayedOnDefault < ActiveRecord::Migration[5.1]
  def change

  end

  def up
    change_column :session_recaps, :played_on, :date, default: { expr: "('now'::text)::date" }
  end
end
