class AddJustDateToPicnic < ActiveRecord::Migration
  def change
    add_column :picnics, :just_date, :date
  end
end
