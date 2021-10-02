namespace :changeday do
  desc "TODO"
  task upgrade_day: :environment do
    Player.all.each do |player|
      player.update money: 10000
    end
  end

end
