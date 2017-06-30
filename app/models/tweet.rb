class Tweet < ApplicationRecord
  attr_accessor: :tweeter
  attr_accessor: :date
  attr_accessor: :text
  attr_accessor: :likes
  attr_accessor: :shares

  def initializes :tweet_as_json
  end

end
