class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :image
      t.string :name
      t.string :f_name
      t.string :designation
      t.date :age
      t.integer :sallary
      t.string :cell

      t.timestamps
    end
  end
end
