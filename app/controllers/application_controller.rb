require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
binding.pry

params[:team][:member].each do |details|
  Member.new(details)
  binding.pry
end

@members = Member.all
      erb :team
    end

end
