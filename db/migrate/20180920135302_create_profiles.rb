class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :hometown
      t.string :current_location
      t.string :github
      t.string :blog
      t.string :bio
      t.string :profile_pic
      t.string :cover_photo
      t.string :occupation
      t.string :education
      t.string :company
      t.integer :user_id

      t.timestamps
    end
  end
end
