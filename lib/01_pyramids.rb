def half_pyramid
  print "> "
  stage = gets.chomp.to_i 
  puts "Voici la pyramide :"
  (stage + 1).times do |i|
    puts " " * (stage - i) + "#" * i
  end 
end

def intro
  print "> "
  stage = gets.chomp.to_i 
  return stage
end


def full_pyramid(stage)
  (stage / 2).times do |i| #je divise par 2 pour obtenir seulement la moitié de mes étages de pyramide en "up"
    puts " " * (stage - i) + "#" * (i + 1 + i) 
  end
end

def down_pyramid(stage)
  (stage / 2).downto(0) do |i| #là en divisant par 2, j'obtiens la seconde moitié de mes étages de pyramides en down
    puts " " * (stage - i) + "#" * (i + 1 + i) 
  end 
end

def perform
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  stage = intro
  loop do
    if stage % 2 == 0 #si l'entrée utilisateur est divisible par 2 = chiffre pair
      puts "Fail \u{1F4A3}\u{1F52A}\u{1F631} Il te fallait entrer un nombre impair !"
      stage = intro #pour éviter une boucle infini il me faut relancer l'intro
    else
      puts "Voici la pyramide :"
      full_pyramid(stage)
      down_pyramid(stage)
      break
    end
  end
end

perform