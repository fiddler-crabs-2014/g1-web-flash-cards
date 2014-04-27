get '/create' do
  erb :create
end

post '/create' do
  @name = params[:name]
  @email = params[:email]
  @password = params[:password]
  @user = User.create(name: @name, email: @email, password: @password)
  session[:user_id] = @user.id
  @session_id = session[:user_id]
  redirect '/'
end

get '/user' do
  puts "Hello /user!"
  puts "#{session[:user_id]}"

  if session[:user_id]
    @user = User.find(session[:user_id])
    @decks = Deck.all
    @cards = Card.all
    @rounds_played = Round.where(users_id: @user.id).count
    @total_correct = Round.where(users_id: @user.id).sum("correct")
    @total_incorrect = Round.where(users_id: @user.id).sum("incorrect")
    @total_guesses = @total_correct + @total_incorrect
    @accuracy = (@total_correct / @total_guesses.to_f).round(4) * 100
    erb :user
  else
    redirect '/'
  end
end

post '/user' do
  @email = params[:email]
  @password = params[:password]
  @user = User.authenticate(@email,@password)

  if @user
    session[:user_id] = @user.id
    @decks = Deck.all
    @cards = Card.all
    @rounds_played = Round.where(users_id: @user.id).count
    @total_correct = Round.where(users_id: @user.id).sum("correct")
    @total_incorrect = Round.where(users_id: @user.id).sum("incorrect")
    @total_guesses = @total_correct + @total_incorrect
    @accuracy = (@total_correct / @total_guesses.to_f).round(4) * 100
    erb :user
  else
    redirect '/'
  end
end

get '/logout' do
  session[:user_id] = nil
  session[:round] = nil
  redirect '/'
end
