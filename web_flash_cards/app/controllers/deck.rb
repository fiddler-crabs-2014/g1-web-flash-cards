get '/deck/:deck' do
  deck = Deck.where(topic: params[:deck]).first
  puts params[:deck]
  # card = deck.cards.first
  # @question = card.question
  # @answer = card.answer
  erb :deck
end

post '/deck/:deck/:id' do
  # @cards = Deck.cards
  erb :deck
end

