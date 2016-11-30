require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  text_from_user = params[:user_text]
  ta=TextAnalyzer.new(text_from_user)
  @vowels_count=at.count_of_vowels
  @words_count=at.count_of_words
  @contstant_count=at.count_of_consonants
  @common_letter=at.most_used_letter

  erb :results
end


end
