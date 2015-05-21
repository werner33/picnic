class AddHostIdToPicnic < ActiveRecord::Migration
  def change
    add_column :picnics, :host_id, :integer
  end
end
