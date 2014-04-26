get '/' do
  # redirect to '/logged_in'  # for development purposes only; remove for production
  erb :index
end

# post '/logged_in' do
#   @decks = Deck.all
#   erb :logged_in
# end

# post '/:deck' do
#   @cards = Deck.cards
#   erb :deck
# end

# get '/create_account' do
#   erb :create_account
# end

# post '/create_account' do
#  #
# end
