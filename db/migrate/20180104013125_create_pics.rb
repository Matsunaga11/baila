class CreatePics < ActiveRecord::Migration[5.0]
  def change
    create_table :pics do |t|
      t.string :subimage
      t.integer :event_id
      t.integer :user_id
      t.timestamps
    end
  end
end
