require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  prompt_user = gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  num = first_card + second_card
  display_card_total(num)
  return num
end



def hit?(num)
  prompt_user
  input = get_user_input
  if input == "h"
    num += deal_card
  elsif input == "s"
    !deal_card
  return num
  end
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
    end
  end_game(card_total)
end

