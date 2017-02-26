
if ARGV[0] == "input"
    # input stockpiled games or books and register them
    print "Please input your games or books:";
    STDOUT.flush
    stockpile = STDIN.gets.to_s.chomp

    # add stockpile text
    File.open("stockpile.txt", "a") do |f|
        f.puts "#{stockpile}";
    end

    # show stockpile text
    File.open("stockpile.txt", "r") do |f|
        puts f.read
    end
else
    print "usage: ruby test.rb [option]\n";
end
