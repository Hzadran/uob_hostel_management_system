class CreateHostelForms < ActiveRecord::Migration[5.0]
  def change
    create_table :hostel_forms do |t|
      t.string :image
      t.string :cnic_image
      t.string :name
      t.string :father_name
      t.string :department
      t.string :nationality
      t.date  :date_of_birth
      t.string :cnic_number
      t.string :mobile_number
      t.string :emergency_mb_number
      t.string :university_registration_number
      t.string :session
      t.integer :hostel_fees
      t.string :chalan_number
      t.date  :pay_date
      t.string :bank
      t.string :local
      t.string :city
      t.string :postel_address
      t.string :permanent_address
      t.string :religion
      t.string :blood_group
      t.integer :previous_block_no
      t.integer :previous_room_no
      t.integer :new_block_no
      t.integer :new_room_no

      t.timestamps
    end
  end
end
