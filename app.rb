require 'sinatra/base'

class App < Sinatra::Base

    get "/newteam" do 

    erb :newteam
    end 

    post "/team" do 
        @team_info = params
        @output = @team_info.each {|key , value| puts "#{key}:#{value}"}
        erb :team
    end 






end
## Set up the paths first and define ultiamtely what they should be doing.
##Then render the html file assocaited with that path.
## The get request renders the form to the client. Once the client fills it out and sends it tback
## to the server it's a POST request that comes in to the controller and then i can do something with it. 