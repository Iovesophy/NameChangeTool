#coding: utf-8
# error処理
# init process
	 uname = `whoami`.chomp.to_s
	 system("rm -f /home/#{uname}/NameChangeTool/.filenamelist.txt")
	 system("ls | sort -n > /home/#{uname}/NameChangeTool/.filenamelist.txt")
	 num = -1
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
				num += 2
			 # core process
			 system("mv /home/#{uname}/NameChangeTool/#{object.chomp} /home/#{uname}/NameChangeTool/#{format("%06d",num).chomp}#{chain.chomp}#{extension}")
			 # display process out
			 p "mv #{object} #{format('%06d',num)}#{chain.chomp}#{extension}"
			end
		end
	else
		puts "確認してください。"
		exit
	end
rescue
	puts "エラーです"
end

