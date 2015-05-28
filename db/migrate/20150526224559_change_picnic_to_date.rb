class ChangePicnicToDate < ActiveRecord::Migration
  def self.up
    change_column :picnics, :date, :datetime
  end
end
