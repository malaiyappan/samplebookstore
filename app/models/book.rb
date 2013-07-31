class Book < ActiveRecord::Base
  require 'aws/s3'
  require 'open-uri'
  require 'nokogiri'
  attr_accessible :author, :cost, :name, :number_of_pages, :stock
  
  def self.save_rates
    file_handle = open('http://166.78.158.161/Pixtant_PROD.xml')
    doc = Nokogiri::XML(file_handle)
    doc.search('//message').each do |person|
      dbname = person.at('dbbackup').text
      status = person.at('status').text 
   end
  end
  
end
