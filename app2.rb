require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")
humanplayer = HumanPlayer.new("User") 



puts "
------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
|          Essaie de pas mourir LOSER !         |
-------------------------------------------------"

enemy = [player1, player2]

while player1.life_points > 0 && player2.life_points > 0 && humanplayer.life_points > 0


    puts "Voici l'état de chaque joueur :"
    player2.show_state
    player1.show_state
    humanplayer.show_state

    puts ""
    puts "Passons à la phase d'attaque !"
    
    


    puts ""
end

if player1.life_points <= 0
    puts "Bravo au joueur #{player2.name} !"
else
    puts "Bravo au joueur #{player1.name} !"
end
