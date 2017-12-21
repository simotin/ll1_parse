require './scanner'

src_code = ""
open("main.c") do |f|
	src_code = f.read
end

tokens = Scanner.new("main.c").scan(src_code)
puts tokens


E = 
