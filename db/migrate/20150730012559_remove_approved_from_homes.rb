class RemoveApprovedFromHomes < ActiveRecord::Migration
  def change
    remove_column :homes, :approved, :boolean
  end
end
