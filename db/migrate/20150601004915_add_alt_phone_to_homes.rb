class AddAltPhoneToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :alt_phone, :string
  end
end
