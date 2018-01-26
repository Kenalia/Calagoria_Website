class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.belongs_to :user, index: true
      
      t.string :name
      t.string :class
      t.string :race
      t.integer :level, :limit => 1
      
      t.integer :strength, :limit => 1
      t.integer :dexterity, :limit => 1
      t.integer :constitution, :limit => 1
      t.integer :intelligence, :limit => 1
      t.integer :wisdom, :limit => 1
      t.integer :charisma, :limit => 1

      t.integer :armorclass, :limit => 1
      t.integer :maxhp, :limit => 2

      t.timestamps
    end
  end
end
