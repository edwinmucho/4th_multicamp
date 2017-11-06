require 'httparty'
require 'nokogiri'

url = 'http://sports.news.naver.com/main/scoreboard.nhn?date=20171106'

response = HTTParty.get(url)

html = Nokogiri::HTML(response.body)
score = html.css('#content > div > table > tbody > tr:nth-child(7) > td.gameinfo > table > tbody > tr:nth-child(1) > td.state')
puts score.text