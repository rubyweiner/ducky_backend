class CreateOccupations < ActiveRecord::Migration[5.2]
  def change
    create_table :occupations do |t|
      t.string :title
      t.date :dob

      t.timestamps
    end
  end
end
