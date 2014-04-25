post '/:deck' do
  deck = Deck.where(topic: params[:deck]).first
  card = deck.cards.first
  @question = card.question
  @answer = card.answer
  erb :deck
end

post '/:deck/:id' do
  @cards = Deck.cards
  erb :deck
end

