class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = ?", Show.highest_rating).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating)
  end

  def self.ratings_sum
    self.sum(:ratings)
  end

end
