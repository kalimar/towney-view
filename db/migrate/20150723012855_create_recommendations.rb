class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :company_name
      t.string :industry
      t.string :contact_name
      t.string :address
      t.string :phone
      t.string :email
      t.text :notes

      t.timestamps null: false
    end
  end
end
