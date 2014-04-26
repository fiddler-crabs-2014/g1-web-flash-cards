get '/:deck' do
  @deck = Deck.where(topic: params[:deck]).first
  card = @deck.cards.first
  @id = card.id
  @next_id = @id + 1
  @question = card.question
  erb :deck_q
end

post '/:deck' do
  deck = Deck.where(topic: params[:deck]).first
  card = deck.cards.first
  @id = card.id
  @next_id = @id + 1
  @question = card.question
  erb :deck_q
end

# post '/:deck/:id' do
#   deck = Deck.where(topic: params[:deck]).first
#   card = deck.cards.find(params[:id])
#   @id = card.id
#   @next_id = @id + 1
#   @question = card.question
#   erb :deck_q
# end

# get '/:deck/:id' do
#   deck = Deck.where(topic: params[:deck]).first
#   card = deck.cards.find(params[:id])
#   @id = card.id
#   @next_id = @id + 1
#   @question = card.question
#   erb :deck_q
# end

post '/:deck/:id/question' do
  deck = Deck.where(topic: params[:deck]).first
  card = deck.cards.find(params[:id])
  @id = card.id
  @next_id = @id + 1
  @question = card.question
  erb :deck_q
end

get '/:deck/:id/question' do
  deck = Deck.where(topic: params[:deck]).first
  card = deck.cards.find(params[:id])
  @id = card.id
  @next_id = @id + 1
  @question = card.question
  erb :deck_q
end

post '/:deck/:id/answer' do
  deck = Deck.where(topic: params[:deck]).first
  card = deck.cards.find(params[:id])
  @id = card.id
  @next_id = @id + 1
  @question = card.question
  @answer = card.answer
  erb :deck_a
end

post "/:deck/:id/check_answer" do
  deck = Deck.where(topic: params[:deck]).first
  card = deck.cards.find(params[:id])
  @id = card.id
  @next_id = @id + 1
  @question = card.question
  @result = params[:input] == card.answer
  erb :deck_check_answer
end


