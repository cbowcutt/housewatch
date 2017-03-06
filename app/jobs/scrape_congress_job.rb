require 'net/http'

class ScrapeCongressJob < ApplicationJob
  queue_as :default

  def perform(*args)
    self.parse_resolutions
  end

  
  def parse_resolutions
    page = Nokogiri::HTML(Net::HTTP.get(URI 'https://www.congress.gov/search?q={%22source%22:%22legislation%22}'))
    page.css('#main')[0].css('li.expanded').each do |li|
      text = li.text
      resolution_id = li.text[/\d{4}\b/]
      title =  li.text[/To(.)*\./]
      session_id = li.text[/\d{4}.\d{2}.\d{2}/]
      res = Resolution.new
      res.id = resolution_id
      res.title = title
      res.number = resolution_id.to_i
      res.date = session_id
      res.save()
    end
  end 
end
