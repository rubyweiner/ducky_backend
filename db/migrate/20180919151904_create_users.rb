class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :pw
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :profile_pic
      t.string :cover_photo
      t.date :dob
      t.integer :occupation_id


      t.timestamps
    end
  end
end
