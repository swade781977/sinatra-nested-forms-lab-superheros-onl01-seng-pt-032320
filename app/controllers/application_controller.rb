require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])
    
        params[:team][:super_heros].each do |t|
            Super_Hero.new(t)
        end

        @super_heroes = Super_Hero.all

        erb :team
    end
end
