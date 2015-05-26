class AddDetailsToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :street_address, :string
    add_column :homes, :primary_first_name, :string
    add_column :homes, :primary_last_name, :string
    add_column :homes, :primary_phone, :string
    add_column :homes, :primary_birth_day, :integer
    add_column :homes, :primary_birth_month, :integer
  end
end
