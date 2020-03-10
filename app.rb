require 'sinatra/base'
require 'require_all'
require_all 'lib'
class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:bookmarks)

  end

  run! if app_file == $0
end
