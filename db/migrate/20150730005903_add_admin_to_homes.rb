class AddAdminToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :admin, :boolean
  end
end
