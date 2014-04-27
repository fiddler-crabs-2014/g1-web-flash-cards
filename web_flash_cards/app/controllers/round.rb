# Game controller logic
post '/round/:deck' do
  session[:round] = Round.create(users_id: session[:user_id]) if session[:round].nil?
  @round = session[:round]
  @deck = Deck.where(topic: params[:deck]).first
  @card = @deck.cards.sample
  @question = @card.question
  # store new card answer in a new guess
  new_guess = Guess.create(answer: @card.answer)

  # avoid "old_guess does not exist" error
  if new_guess != Guess.first
    old_guess = Guess.find(new_guess.id - 1)
    old_guess.user_input = params[:user_input]

    if old_guess.correct?
     @result = "Correct!"
     @round.up_score!
    else
     @result = "Incorrect"
     @round.down_score!
    end

    @round.update!
  end

  if @round.game_over?
    session[:round] = nil
    Guess.destroy_all
    return erb :score
  end

  erb :deck
end
