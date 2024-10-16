require "pry"

class Player
attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points =  10
    end

    def show_state
        puts "#{@name} à #{@life_points} points de vie"
    end

    def gets_damage(damage_received)
        @life_points -= damage_received
    if  @life_points <= 0
        puts "Le joueur #{@name} a été tué !"
    end
    end

    def attack(enemy)
        damage = compute_damage
        puts "#{@name} attaque #{enemy.name} et lui inflige #{damage} points de dommages"
        enemy.gets_damage(damage)
    end

        def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player
attr_accessor :weapon_level

    def initialize(name)
        @life_points = 100
        @weapon_level = 1
        @name = name
        
    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end

        def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        weapon_new = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{weapon_new}"
    if weapon_new > @weapon_level
        puts "Youhou, elle est meilleure que ton arme de niveau actuelle #{@weapon_level}, tu la prends !"
    @weapon_level = weapon_new
    else 
        puts "Bordel M@*#$.. elle est moins bien que #{@weapon_level}tu vas devoir garder cette antiquité !"
    end
end
end
        
    