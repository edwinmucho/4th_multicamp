# 1. 특정 폴더로 들어간다.
# 2. 파일을 생성한다.
# 3. 내용을 작성한다.

# 30개의 파일을
# 1.txt ~ 30.txt
# 내용 : 1 번째 내용 ~ 30 번째 내용

#--> Let's coding!

# r - Read only. The file must exist.
# w - Create an empty file for writing.
# a - Append to a file.The file is created if it does not exist.
# r+ - Open a file for update both reading and writing. The file must exist.
# w+ - Create an empty file for both reading and writing.
# a+ - Open a file for reading and appending. The file is created if it does not exist.

Dir.chdir("src") # 폴더 변경

(1..30).each do |num|
    out_file = File.new(num.to_s + ".txt", "w")
    out_file.puts(num.to_s + " 번째 내용")
    out_file.close
end    

#Another answer
# 30.times do |i|
#   i+=1 # 0 부터 시작하기 때문에 1을 더해줌.
#   File.open(i.to_s+".txt","w") do |f|
#       f.write(i.to_s+ " 번째 내용")
#     end
# end


puts Dir.pwd