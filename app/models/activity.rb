class Activity < ApplicationRecord
  belongs_to: resolution

  def get_tweets
  end

  def get_news_coverage start_date, end_date
  end

  private
  def sort_tweets_by attribute
  end

end


