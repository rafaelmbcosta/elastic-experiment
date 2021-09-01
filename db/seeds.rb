puts 'Creating teams...'

500.times do
    Team.create!(
        name: Faker::Sports::Football.team,
        player_name: Faker::Name.name
    )
end

puts 'Creating disputes...'

months = ['Janeiro', 'Fevereiro', 'Março', 'Abril']

months.each do |month|
    Dispute.create!(name: month)
end

puts 'Creating rounds ...'

(1..38).to_a.each do |number|
    Round.create!(number: number)
end

puts 'Distribute rounds among disputes...'

Round.all.find_in_batches(batch_size: 10).with_index do |rounds, index|
    dispute = Dispute.find { |dispute| dispute.name === 'Janeiro' }

    rounds.each do |round|
        round.update!(dispute: dispute)
        puts "generating scores for round #{round.number}..."
        Team.all.each do |team|
            Score.create!(
                team: team,
                round: round,
                points: (rand()*100).round(2)
            )
        end
    end
end

puts 'Done...'