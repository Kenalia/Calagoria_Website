class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :characters, :class, :class_role
  end
end
