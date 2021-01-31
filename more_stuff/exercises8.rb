# write a program that checks if the sequence of characters "lab" exists in the
# following strings
"laboratory" 
def contains_word?(word_fragment, word)
  if /#{word_fragment}/.match(word.downcase) 
    puts "#{word} contains #{word_fragment}!"
  else
    puts "#{word} does not contain #{word_fragment}!"
  end
end
contains_word?('lab', 'laboratory')
contains_word?('lab', 'experiment')
contains_word?('lab', 'Pans Labyrinth')
contains_word?('lab', 'elaborate')
contains_word?('lab', 'polar bear')

# what will the following program print to the screen?
def execute(&block)
    block.call
end

execute  { puts "Hello from the inside of of the execute method!" }
# it doesn't return anything because it is never called with the call 
# method.

