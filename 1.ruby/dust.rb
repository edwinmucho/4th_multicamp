require 'httparty'
url = 'http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty?stationName=%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC&dataTerm=MONTH&numOfRows=100&ServiceKey=sfE57qPQ5x1eAXU41ftcyXYJZK5eKEONTGzz%2FdCe069VtqGX4UwcpLZbJhXSayA%2FtauuMhXPXttKeoxuafYWPQ%3D%3D'
response = HTTParty.get(url)
dust = response.first[1]["body"]["items"]["item"][1]["pm10Value"]
puts ("미세먼지 농도는 "+dust)