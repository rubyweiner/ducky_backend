class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :bio
      t.string :profile_pic
      t.string :cover_photo
      t.integer :occupation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
