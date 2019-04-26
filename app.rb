require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end
<<<<<<< HEAD

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/new' do
    Bookmark.add(params[:url])
    redirect '/bookmarks'
  end


=======
  
>>>>>>> 9478753afad1d7caf52330be7ae31fcacaa16640
  run! if app_file == $0
end
