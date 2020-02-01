require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
     @user_name = params[:name]
    @user_name.reverse
  end
  
  get '/square/:number' do
  @square = params[:number].to_i * params[:number].to_i
  	@square.to_s
  end
  
  get '/say/:number/:phrase' do 
  @number = params[:number].to_i  
  @phrase = params[:phrase]
  @phrase * @number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  '#{[params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')'
  "'#{['12','34','35','231'].join("', '")}'"
  end
  
  get '/:operation/:number1/:number2' do
  
  end
  
  

end