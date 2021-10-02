namespace :changeday do
  desc "TODO"
  task upgrade_day: :environment do
    Player.all.each do |player|
      player.money+=10000
      player.update money: player.money
    end
  end

end
