class Recommendation < ActiveRecord::Base
  belongs_to :home
  validates :industry, presence: true
  
  def self.available_industries
    return [""] unless Recommendation.first
    arr = []
    Recommendation.all.each { |r| arr << r.industry.downcase }
    arr.uniq.sort
  end
  
end
