class AddmonthToevents < ActiveRecord::Migration[5.0]
  def change
  add_column :events, :month, :string
  end
end
