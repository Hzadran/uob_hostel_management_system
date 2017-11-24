class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.string :room_type
      t.references :hostel_block, foreign_key: true

      t.timestamps
    end
  end
end
