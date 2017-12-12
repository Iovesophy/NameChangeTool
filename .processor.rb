#coding: utf-8
# error処理
# テスト定義
def test1
        system("mv README.md .README.md")
	10000.times do |i|
		system("mkdir testfile#{i}")
        end
end
def test_fin
	system("find . -empty | xargs rm -r")
	system("mv .README.md README.md")
end
# test start 
	test1()
# init process
	 uname = `whoami`.chomp.to_s
	 system("rm -f /home/#{uname}/namechangetool/.filenamelist.txt")
	 system("ls -t > /home/#{uname}/namechangetool/.filenamelist.txt")
	 num = 0
begin
	puts "このフォルダーに名前を変更したいファイルを入れましたか？:Y,N"
	conf = gets.chomp.to_s
	if conf == "Y" || conf == "y"
		puts "処理開始"
		puts "fileの拡張子を入力（ドット不要）"
		extension = gets.chomp.to_s
		chain = "."
		File.open(".filenamelist.txt","r") do |io|
			io.each do |object|	
				num += 1
			 # core process
			 system("mv /home/#{uname}/namechangetool/#{object.chomp} /home/#{uname}/namechangetool/#{format("%06d",num).chomp}#{chain.chomp}#{extension}")
			 # display process out
			 p "mv #{object} #{format('%06d',num)}#{chain.chomp}#{extension}"
			end
		end
	else
		puts "確認してください。"
		exit
	end
#test exit process
test_fin()
rescue
	puts "エラーです"
end

