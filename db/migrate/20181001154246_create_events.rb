class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :description
      t.date :date
      t.time :time
      t.string :cover_photo
    

      t.timestamps
    end
  end
end
