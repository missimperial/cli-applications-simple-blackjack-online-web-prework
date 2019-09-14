require 'pry'

def welcome_user
  puts "HI!"
end
 
def ask_name
  puts "What is your name?"
end

def get_user_input
  gets.chomp
end

def personalized_welcome(name)
  puts "HI, #{name}"
end

def run_program
  welcome_user
  ask_name
  name = get_user_input
  personalized_welcome(name)
end

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

def thank_you
  puts "Thanks for playing"
end 

def end_game(over)
    puts "Sorry, you hit #{over}." 
    thank_you 

end

def card_display(amount)
  puts "Card Value: #{amount}"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  card_display(first_card)
  card_display(second_card)
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    print "You've won! "
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

def play_again
  puts "Would you like to play again?"
  puts "Type 'y' for yes or 'n' for no"
end

def game_loop(game_sum)
  if game_sum < 21
    game_sum =+ hit?(game_sum)
    display_card_total(game_sum)
  else game_sum > 21
    end_game(game_sum)
  end 
end 

def runner
  run_program
  welcome
  game_sum = 0
  replay = "y"
  while game_sum <= 21 && replay == 'y'
    game_sum = initial_round
    game_loop(game_sum)
    play_again
    replay = get_user_input
    end
    thank_you
end
    
