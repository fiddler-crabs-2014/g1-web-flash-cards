
Deck.create(topic: "Lit-Trivia")
Deck.create(topic: "Random")

File.open("lit-triv.txt").each do |line|
  q_a_pair = line.chomp.split(",")
  card = Card.create(question: q_a_pair[0], answer: q_a_pair[1])
  CardsDeck.create({card_id: card.id, deck_id: 1})

@deck1 = Deck.create(topic: "french")
@deck2 = Deck.create(topic: "spanish")

File.open("random.txt").each do |line|
  q_a_pair = line.chomp.split(",")
  card = Card.create(question: q_a_pair[0], answer: q_a_pair[1])
  CardsDeck.create({card_id: card.id, deck_id: 2})
end

#  ActiveRecord::Base.transaction do
#   @deck1 = Deck.create(topic: "french")
#   @deck2 = Deck.create(topic: "spanish")

#   File.open("english-french.txt").each do |line|
#     q_a_pair = line.chomp.split("\t")
#     card = Card.create(question: q_a_pair[1], answer: q_a_pair[0])
#     card.decks << @deck1
#   end

#   File.open("english-spanish.txt").each do |line|
#     q_a_pair = line.chomp.split("\t")
#     card = Card.create(question: q_a_pair[1], answer: q_a_pair[0])
#     card.decks << @deck2
#   end
# end
