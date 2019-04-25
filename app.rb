require 'sinatra/base'
	require 'sinatra'

	class Bookmark < Sinatra::Base

	  get '/' do
	  'Bookmark Manager'
	  end

	  run! if app_file == 0
	end
