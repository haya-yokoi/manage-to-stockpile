# input mechanism
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
# clear mechanism
elsif ARGV[0] == "clear"
    # input cleared games or books and clear them from stockpile text
    print "Please input your cleared games or books:"
    STDOUT.flush
    clear = STDIN.gets.to_s.chomp

    # save the contents of stockpile text at temporary variable
    buffer = File.open("stockpile.txt", "r") do |f|
        f.read
    end

    # replace
    buffer.gsub!(clear+"\n", "")

    # rewrite
    File.open("stockpile.txt", "w") do |f|
        f.puts "#{buffer}";
    end

    # show stockpile text
    File.open("stockpile.txt", "r") do |f|
        puts f.read
    end

else
    print "usage: ruby test.rb [option]\n";
end
