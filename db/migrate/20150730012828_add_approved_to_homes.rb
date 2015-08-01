class AddApprovedToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :approved, :boolean
  end
end
