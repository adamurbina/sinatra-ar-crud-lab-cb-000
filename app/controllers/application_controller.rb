
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
      erb :new
  end

  post "/posts/new" do
      @post = Post.create(params)
      binding.pry

      erb :index
  end

end
