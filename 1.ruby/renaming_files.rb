# 폴더안에 모든 File 이름을 바꿔라!!
# 1. 폴더 안으로 들어간다.
# 2. 폴더 안을 돌면서 파일들의 이름을 가져온다.
# 3. 각각의 이름을 "samsung1.txt ~ samsung30.txt"로 바꾼다.

#--> Let's coding!

Dir.chdir("src")
uri = Dir.pwd

# Dir.glob(uri +"/*.txt") do |f| #/home/ubuntu/workspace/1.ruby/src/25.txt
#     puts f
# end

Dir.foreach(uri) do |f| # {|f| f[0] == '.'}
    next if f == '.' or f == '..'
    File.rename(f, "samsung"+f)
end


