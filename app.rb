require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end
  
  run! if app_file == $0
end
