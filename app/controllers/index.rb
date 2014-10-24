
get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

post '/get_cool' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @url = Url.first(:order =>"RANDOM()")
  "#{@url.url}"


  # redirect to ("/#{@url.url}")
  #erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"

  input = params[:user_input_2]
  Url.create(url: input)
  "#{input}"

  # erb :post_cool_url
end


post '/list_of_all_url' do
  @url = Url.find(:all)
  erb :all
end




