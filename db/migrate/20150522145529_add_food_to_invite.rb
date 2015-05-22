class AddFoodToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :food, :string
  end
end
