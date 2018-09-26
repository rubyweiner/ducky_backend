class CreateUserskills < ActiveRecord::Migration[5.2]
  def change
    create_table :userskills do |t|
      t.integer :user_id
      t.integer :skill_id
      
      t.timestamps
    end
  end
end
