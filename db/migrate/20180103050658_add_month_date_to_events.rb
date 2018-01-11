class AddMonthDateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :eventday, :datetime
    add_column :events, :prefecture, :string
  end
end
