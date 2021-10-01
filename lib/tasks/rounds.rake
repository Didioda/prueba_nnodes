namespace :rounds do
  desc "TODO"
  task round_update: :environment do
    round = Round.new
    round.result = round.WinningBall
    
    #Logica apuesta
    Player.all.each do |player|
      if player.money > 1000    
        puts "Ronda: "+round.result
        puts "Jugador:" +player.probability
        puts "---------------------"
        if round.result == player.probability
          round.player = player
          puts "Ganador!: "+player.name + player.last_name
          if round.result=="green"
            player.money += ((player.money*player.range)*15)
          else
            player.money += ((player.money*player.range)*2)
          end
        else
            player.money -= (player.money*player.range)
        end
      playerMoney = player.money
      player.money = playerMoney.round(0)
      player.update money: player.money
      end
      round.save!
      if player.money<=1000
        puts "#{player.name} Se dirige a un all-in"

        if round.result == player.probability
          round.player = player

          if round.result=="green"
            player.money += ((player.money*player.range)*15)
          else
            player.money += ((player.money*player.range)*2)
          end
        else
            player.money =0
        end
      end
      playerMoney = player.money
      player.money = playerMoney.round(0)
      player.update money: player.money

    end
    
  end
end
