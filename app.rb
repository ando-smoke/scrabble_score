require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/form') do
  erb(:form)
end

get('/results') do
  @word = params.fetch('word')
  @score = @word.scrabble_score()
  erb(:results)
end
