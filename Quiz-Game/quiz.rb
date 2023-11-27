# Questions pulled from: https://travelswithelle.com/other/multiple-choice-trivia-questions/

require 'json'

# Question object to store the prompt and answer
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

# This function reads in all the questions from
# the JSON file and returns an array of
# Question objects from it
def select_questions
  data = File.open('./questions.json')
  questions_map = JSON.load data
  data.close
  questions_map.map do |question|
    Question.new(question['prompt'], question['answer'])
  end
end

# Game length selection
def select_length
  puts "Select Quiz Length:\nOption 1: 5 Questions\nOption 2: 10 Questions\nOption 3: 15 Questions\n\nSelect [1,3] to continue."
  option = gets.chomp.to_i
  case option
  when 1
    num_questions = 5
    puts "Selected 5 questions.\n"
  when 2
    num_questions = 10
    puts "Selected 10 questions.\n"
  when 3
    num_questions = 15
    puts "Selected 15 questions.\n"
  else
    puts "Invalid choice. Defaulting to 5 questions."
    num_questions = 5
  end
  num_questions
end

# Main function that gets a list of random
# questions and presents them to the player,
# then tallies and returns the score
def run_quiz
  score = 0
  questions = select_questions.sample(select_length)
  questions.each { |question|
    puts("\n" + question.prompt + "\nInput Answer:")
    answer = gets.chomp.downcase
    if answer == question.answer
      score += 1
    end
  }
  puts "\n---------------------\nYou got #{score} out of #{questions.length}!\n---------------------"
end

run_quiz