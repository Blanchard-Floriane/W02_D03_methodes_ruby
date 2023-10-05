def signup #définir mot de passe
  puts "Hello, définis un mot de passe (attention tu devras le garder en mémoire) :"
  print "> "
  password = gets.chomp
  puts "J'espère que tu t'en souviendras... u\{1F608}"
  20.times do
    puts ""
  end
  return password #afin de conserver l'info et pour l'utiliser ailleurs dans le programme et/ou ultérieurement
end

def login(password) # user entre son mdp et bloc tant que ce n'est pas le bon, pour cela je fais appelle à ma variable précédente "password"
  puts "LOGIN : Tape ton mot de passe :"
  loop do #pour que cela boucle tant que le user n'a pas rentré le bon password 
    print "> "
    password_login = gets.chomp
    if password == password_login
      3.times do
        puts ""
      end
      puts "    |    |  "
      puts "    |    |  "
      puts "    |    |  "
      puts "  --      --"
      puts "  \\        /"
      puts "   \\      / "
      puts "    \\    /  "
      puts "     \\  /   "
      puts "      \\/    "
      puts ""
      break
    else
      puts "Ce n'est pas le bon tête de noeud ! Recommence :"
    end
  end
end

def welcome_screen #affiche l'écran de bienvenue avec les infos
  puts "Bienvenu dans sa zone secrète"
  puts "Voici le plus important des secrets THP :"
  puts "En vérité, Lilian est un extraterrestre.... Chut \u{1F92B} c'est un secret !"
end

def perform #lancer le pro
  password = signup
  login(password)
  welcome_screen
end

perform