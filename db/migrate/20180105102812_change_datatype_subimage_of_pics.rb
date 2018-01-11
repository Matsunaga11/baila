class ChangeDatatypeSubimageOfPics < ActiveRecord::Migration[5.0]
  def self.up
    change_column_null :pics, :subimage, false, 0
  end

  def self.down
    change_column_null :pics, :subimage, true, nil
  end
end
