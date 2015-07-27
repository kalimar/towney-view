class AddHomeRefToRecommendations < ActiveRecord::Migration
  def change
    add_reference :recommendations, :home, index: true, foreign_key: true
  end
end
