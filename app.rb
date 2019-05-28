require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @teamname=params["TN"]
    @coach=params["coach"]
    @pointguard=params["PG"]
    @shootingguard=params["SG"]
    @smallforward=params["SF"]
    @powerforward=params["PF"]
    @center=params["center"]
    erb :team
  end

end
