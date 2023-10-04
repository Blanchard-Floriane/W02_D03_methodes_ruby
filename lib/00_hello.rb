def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name #Ce return va renvoyer l'info dans la méthode perform et stocker dans la variable first_name. Cela sert à ce que cette valeur puisse être utiliser quand on veut, voire plus tard dans le programme.
end

def say_hello(first_name)
  puts "Bonjour, #{first_name}"
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform