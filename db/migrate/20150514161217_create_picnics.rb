class CreatePicnics < ActiveRecord::Migration
  def change
    create_table :picnics do |t|
    
    
      t.string :name
      t.date :date
      t.datetime :time
      t.text :description
      t.string :location
      
      t.timestamps
    end
  end
end
