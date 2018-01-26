class CreateSessionRecaps < ActiveRecord::Migration[5.1]
  def change
    create_table :session_recaps do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
