require_relative 'config/environment'

class App < Sinatra::Base



  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get '/multiply/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
     res = @number1 * @number2
     res.to_s


  end


end
