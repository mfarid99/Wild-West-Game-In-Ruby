require "./classes.rb"

puts "Whats your name"
name = gets.chomp

Player = COWBOY.new(name)
Cleetus = COWBOY.new("Cleetus")

while true do
    puts "Cleetus' life: #{Cleetus.health} - #{Player.name}'s life:  #{Player.health}"
    puts "do you want to shoot or run"
    input = gets.chomp 

    if input ==  "shoot"
        Player.shoot(Cleetus)
        Cleetus.shoot(Player)
    end
    if input == "run"
        if rand(100) > 60
            puts "You have escaped to fight another day"
            break
        else
            puts "you fail to escape"
        end
    end
        if Player.health <= 0
            puts "#{Player.name} has been fataly wounded, you lose"
            break
        end
        if Cleetus.health <= 0
            puts "Cleetus has been killed, you win"
        break
        end

        
end