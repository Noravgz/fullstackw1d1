require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")



while player1.life_points > 0 && player2.life_points > 0


    puts "Voici l'état de chaque joueur :"
    player2.show_state
    player1.show_state

    puts ""
    puts "Passons à la phase d'attaque !"
    player1.attack(player2)
    player2.attack(player1) if player2.life_points > 0
    
    


    puts ""
end

if player1.life_points <= 0
    puts "Bravo au joueur #{player2.name} !"
else
    puts "Bravo au joueur #{player1.name} !"
end

