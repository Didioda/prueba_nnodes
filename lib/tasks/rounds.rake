namespace :rounds do
  desc "TODO"
  task round_update: :environment do
    round = Round.new
    round.result = round.WinningBall

    #Logica apuesta
    Player.all.each do |player|

      if player.money>1000
        player_bet = (player.money*player.range)
      elsif player.money >0 & player.money <=1000
        player_bet = player.money
      else
        pass
      end
      bet = Bet.create(player:player, bet:player_bet, round:round  )

      if player.money > 1000    
          if round.result == player.probability
            round.player = player
            if round.result=="green"
              player.money += (player_bet*15)
            else
              
              player.money += (player_bet*2)
            end
          else
              player.money -= (player.money*player.range)
          end
        playerMoney = player.money
        player.money = playerMoney.round(0)
        player.update money: player.money
        
        
        elsif player.money<=1000

          if round.result == player.probability
            round.player = player

            if round.result=="green"

              player.money += (player_bet*15)
            else
              player.money += (player_bet*2)
            end
          else
              player.money =0
          end
        end

        playerMoney = player.money
        player.money = playerMoney.round(0)
        player.update money: player.money
      end
     
      round.save!
    
  end
  
  
end
