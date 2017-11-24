class CreateHostelBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :hostel_blocks do |t|
      t.integer :block_no
      t.string :block_warden
      t.string :location

      t.timestamps
    end
  end
end
