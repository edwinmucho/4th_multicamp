require 'httparty'
require 'nokogiri'

url = "http://finance.naver.com/sise/"
response = HTTParty.get(url)

text = Nokogiri::HTML(response.body)

#puts text
kospi = text.css('#KOSPI_now')

puts kospi.text