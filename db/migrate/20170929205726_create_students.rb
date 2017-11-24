class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :image
      t.string :upc
      t.string :name
      t.string :father_name
      t.string :department
      t.string  :chairman
      t.string :cnic_no
      t.string :cell_no
      t.string :emer_cell_no
      t.date :age
      t.string :city
      t.string :local
      t.integer :hostel_fees
      t.integer :chalan_no
      t.date :pay_date
      t.string :bank
      t.string :nationality
      t.string :address
      t.string :blood_group
      t.string :university_regestration_no
      t.references :session, foreign_key: true
      t.references :hostel_block, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
