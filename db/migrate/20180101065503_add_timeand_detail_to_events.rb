class AddTimeandDetailToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :time, :time
    add_column :events, :year, :date
    add_column :events, :detail, :string
    add_column :events, :add_endtime, :datetime
  end
end
