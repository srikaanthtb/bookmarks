require 'sinatra/base'
require 'require_all'
require_all 'lib'
class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  post '/bookmarks/new' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end


  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
