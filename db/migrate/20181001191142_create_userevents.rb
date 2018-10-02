class CreateUserevents < ActiveRecord::Migration[5.2]
  def change
    create_table :userevents do |t|
      t.integer :invitee_id
      t.integer :event_id

      t.timestamps
    end
  end
end
