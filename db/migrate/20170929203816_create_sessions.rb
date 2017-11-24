class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.date :sess_starting
      t.date :sess_ending
      t.string :duration

      t.timestamps
    end
  end
end
