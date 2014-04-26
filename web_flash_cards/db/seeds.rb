# Deck.create({topic: "French"})
Deck.create(topic: "Lit-Trivia")
Deck.create(topic: "Random")

# File.open("english-french.txt").each do |line|
#   q_a_pair = line.chomp.split("\t")
#   card = Card.create(question: q_a_pair[1], answer: q_a_pair[0])
#   CardsDeck.create({card_id: card.id, deck_id: 1})
# end

File.open("lit-triv.txt").each do |line|
  q_a_pair = line.chomp.split(",")
  card = Card.create(question: q_a_pair[0], answer: q_a_pair[1])
  CardsDeck.create({card_id: card.id, deck_id: 1})
end

File.open("random.txt").each do |line|
  q_a_pair = line.chomp.split(",")
  card = Card.create(question: q_a_pair[0], answer: q_a_pair[1])
  CardsDeck.create({card_id: card.id, deck_id: 2})
end

