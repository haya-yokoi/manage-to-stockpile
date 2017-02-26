print "Please input your games or books:";
STDOUT.flush
stockpile = gets.to_s.chomp

File.open("stockpile.txt", "a") do |f|
    f.puts "#{stockpile}";
end

File.open("stockpile.txt", "r") do |f|
    puts f.read
end

