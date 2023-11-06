class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10).join(" ")
  end

  def score

if params [:user_guess]
  @letters = @letters.select { |letter| letter.include?(params[:user_guess])}
end

# <%# LETTER NOT INCLUDED %>
@answer = "<p>Sorry, but <b>#{params [:user_guess]}</b>can't be built out of #{params[:letters]}</p>"

# <%# NOT A WORD %>
@answer = "<p>Sorry, but <b>${'score'}</b>does not seem to be a valid English word...</p>"

# <%# CORRECT %>
@answer = "<p><b>Congratulations!</b> #{params [:user_guess]} is a valid English word!</p>"


  end
end


# = letters.to_a
# then compare all of the user_guess letters to the letters array
# if all letters are included in the array, then compare the word with the API
