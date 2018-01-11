class RemoveMonthdateyearFromEvents < ActiveRecord::Migration[5.0]
  def change
  remove_column :events, :year, :date
  remove_column :events, :date, :string
  remove_column :events, :month, :string
  end
end
