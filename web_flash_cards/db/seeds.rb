@deck1 = Deck.create(topic: "french")
@deck2 = Deck.create(topic: "spanish")

File.open("english-french.txt").each do |line|
  q_a_pair = line.chomp.split("\t")
  card = Card.create(question: q_a_pair[1], answer: q_a_pair[0])
  card.decks << @deck1
end

File.open("english-french.txt").each do |line|
  q_a_pair = line.chomp.split("\t")
  card = Card.create(question: q_a_pair[1], answer: q_a_pair[0])
  card.decks << @deck2
end
