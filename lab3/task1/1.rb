RESULTS_LIST = 'results.txt'
BUFFER = 'buffer.txt'

def index
  File.foreach(RESULTS_LIST ) { |actor| puts actor }
end

def where(pattern)
  File.foreach(RESULTS_LIST ).with_index do |actor, index|
    @actor_id = index if actor.include?(pattern)
  end

  @actor_id
end

def update(id, text)
  file = File.open(BUFFER, 'w')
  
  File.foreach(RESULTS_LIST ).with_index do |actor, index|
    file.puts(id == index ? text : actor)
  end

  file.close
  File.write(RESULTS_LIST , File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
  file = File.open(BUFFER, "w")
  File.foreach(RESULTS_LIST ).with_index do |actor, index|
      file.puts actor if id != index
  end

  file.close
  File.write(RESULTS_LIST , File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

def find(id)
  File.foreach(RESULTS_LIST ).with_index do |actor, index|
    puts actor if id == index
  end
end
