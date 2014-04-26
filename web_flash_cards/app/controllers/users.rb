get '/login' do
  erb :login
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

post '/user' do
  @email = params[:email]
  @password = params[:password]
  @user = User.authenticate(@email,@password)

  if @user
    session[:user_id] = @user.id
    @decks = Deck.all
    @cards = Card.all
    erb :user
  else
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/create_account' do
  erb :create_account
end
