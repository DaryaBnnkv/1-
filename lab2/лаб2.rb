def check_word
  print ("Your word: ")
  word = gets.chomp

  word[-2..-1] == "CS" ? (p (2 ** word.length)) : (p (word.reverse))
end

def create_pokemons
  print ("How many Pokemon will there be? ")
  number = gets.to_i

  pokemons = []

  number.times do
    print ("Name of pokemon: ")
    name = gets.chomp
    print ("Color of pokemon: ")
    color = gets.chomp
    pokemons << { name => color }
  end

  p pokemons
end

check_word
create_pokemons
