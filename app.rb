# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'main'

get '/' do
  erb :upload
end

post '/process' do
  if params[:file]
    file_path = 'uploads/watchlist.csv'
    File.open(file_path, 'wb') do |file|
      file.write(params[:file][:tempfile].read)
    end

    # Here, call your main processing logic
    result = process_watchlist_file(file_path) # You'll need to implement this

    content_type 'application/txt'
    attachment 'results.txt'
    result
  else
    'No file selected'
  end
end

# Add your process_watchlist_file method or logic here
def process_watchlist_file(_path)
  # Your logic to process the CSV

  w = Watchlist.new
  w.fetch_movies
  w.movie
end
