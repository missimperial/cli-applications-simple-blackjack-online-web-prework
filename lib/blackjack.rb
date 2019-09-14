require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(over)
    puts "Sorry, you hit #{over}. Thanks for playing!"

end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
  else
    invalid_command
    prompt_user
    get_user_input
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  game_sum = initial_round
  while game_sum < 21
   game_sum =+ hit?(game_sum)
   display_card_total(game_sum)
  end
  end_game(game_sum)
end
    
