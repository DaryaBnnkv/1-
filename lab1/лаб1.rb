def greeting
    print ("Your name: ")
    name = gets.chomp

    print ("Your surname:")
    surname= gets.chomp

    print ("Your age:")
    age = gets.to_i

    if age < 18
      p "Hi, #{name} #{surname}. You are less then 18, but starting programming is never early"
    else
      p "Hello, #{name} #{surname}. Time to work!"
    end
end

def foobar
  limit_number = 20

  print ("First number:")
  n1 = gets.to_i

  print ("Second number:")
  n2 = gets.to_i

  if n1 == limit_number  or n2 == limit_number
    p n2
  else
    p n1 + n2
  end
end

greeting()
foobar()
