require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])


params[:team][:hero].each do |details|
  binding.pry
  Member.new(details)
  binding.pry
end

@members = Member.all
binding.pry
      erb :team
    end

end
