get '/' do
  # Look in app/views/index.erb


  redirect to '/logged_in'  # for development purposes only; remove for production
    # erb :index
end

get '/create_account' do
  erb :create_account
end

post '/create_account' do
 #
end

post '/logged_in' do
  erb :logged_in
end

# for development purposes only; remove for production
get '/logged_in' do
  erb :logged_in
end
