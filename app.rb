require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/new' do
    Bookmark.add(params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
