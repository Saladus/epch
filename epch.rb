#!/usr/bin/env ruby

def prompt()
	print "> "
end

def start()
	system "clear"
	puts "Random series [0]"
	puts "South Park [1]"
	puts "Rick and Morty [2]"
	puts "Futurama [3]"
	puts "King of the Hill [4]"
	puts "\nExit [.]"
	
	prompt; choice = $stdin.gets.chomp

	case choice
	when "." then Process.exit(0)
	when "0" then Random_Series()
	when "1" then South_Park()
	when "2" then Rick_and_Morty()
	when "3" then Futurama()
	when "4" then King_of_the_Hill()
	
	else start()
	end
end

def vsjo()
	puts "Run again? (y/n)"

	prompt; choice = $stdin.gets.chomp

	case choice
	when "n" then Process.exit(0)
	else
		system "clear"
		start()
	end
end

def Random_Series()
	s = Random.rand(0..3)

	case s
	when 0 then South_Park()
	when 1 then Rick_and_Morty()
	when 2 then Futurama()
	when 3 then King_of_the_Hill()
	else Random_Series()
	end
end

def South_Park()
	s = Random.rand(1..20)

	case s
	when 17..20 		then e = Random.rand(1..10)
	when 1 				then e = Random.rand(1..13)
	when 5, 8..16 		then e = Random.rand(1..14)
	when 7 				then e = Random.rand(1..15)
	when 3, 4, 6 		then e = Random.rand(1..17)
	when 2 				then e = Random.rand(1..18)
	end
	puts "South Park"
	puts "Season #{s} Episode #{e} ?"
	vsjo()
end

def Rick_and_Morty()
	s = Random.rand(1..2)

	case s
	when 1 then e = Random.rand(1..11)
	when 2 then e = Random.rand(1..10)
	end

	puts "Rick and Morty"
	puts "Season #{s} Episode #{e}"
	vsjo()
end

def Futurama()
	s = Random.rand(1..7)

	case s
	when 1 		then e = Random.rand(1..13)
	when 2 		then e = Random.rand(1..19)
	when 3 		then e = Random.rand(1..22)
	when 4 		then e = Random.rand(1..18)
	when 5 		then e = Random.rand(1..16)
	when 6, 7 then e = Random.rand(1..26)
	end

	puts "Futurama"
	puts "Season #{s} Episode #{e}"
	vsjo()
end

def King_of_the_Hill()
	s = Random.rand(1..13)
	
	case s
	when 1,11 		then e = Random.rand(1..12)
	when 2,7  		then e = Random.rand(1..23)
	when 3			then e = Random.rand(1..25)
	when 4,13 		then e = Random.rand(1..24)
	when 5			then e = Random.rand(1..20)
	when 6,8,12 	then e = Random.rand(1..22)	
	when 9,10		then e = Random.rand(1..15)
	end
	
	puts "King of the Hill"
	puts "Season #{s} Episode #{e}"
	vsjo()
end

start()
