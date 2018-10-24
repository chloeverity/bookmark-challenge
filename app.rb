require 'sinatra/base'
require './lib/bookmark'
# require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/new_bookmark' do
    erb :new_bookmark
  end

  post '/new_bookmark' do
    Bookmark.create(params[:url], params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
