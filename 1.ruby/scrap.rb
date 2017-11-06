require 'httparty'
require 'nokogiri'

url = "http://finance.naver.com/sise/"
response = HTTParty.get(url)

text = Nokogiri::HTML(response.body) # 검색이 용이하게 HTML만 뽑아온다. 
#Nokogiri::XML  XML 파싱할때 씀.

#puts text
kospi = text.css('#KOSPI_now')

puts kospi.text # .text 를 쓰면 tag 안에 있는 것만 나옴.