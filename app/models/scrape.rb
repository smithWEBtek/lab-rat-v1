require 'nokogiri'
 require 'open-uri'

 class Scrape < ApplicationRecord

  # def self.muni
  #   # file =  File.open('/Users/BradSmith/dev/aa/lab-rat/app/assets/html/udemy1.html')
  #   file =  File.open('/Users/BradSmith/desktop/icc.htm')
  #   doc = File.open(file) { |f| Nokogiri::HTML(f) }
  #   doc.css('.department-name firstWord')
  #   munis = []
  #   binding.pry
  # end

  def self.pdf
    @urls = []
    file =  File.open('/Users/bradsmith/today/pdf.html')
    doc = File.open(file) { |f| Nokogiri::HTML(f) }
    doc.css('.fl-col-content a').each do |item|
      @urls.push({ url: item.values[0], title: item.text})
    end
    self.download
  end

  def self.download
    counter = 0
    @urls.slice(0,12).each do |url|

      download = open(url[:url])
      IO.copy_stream(download, "#{url[:title]}.pdf")
    end
  end
end

