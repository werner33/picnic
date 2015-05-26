class AddImageToPicnic < ActiveRecord::Migration
  def change
    add_column :picnics, :image, :string
  end
end
