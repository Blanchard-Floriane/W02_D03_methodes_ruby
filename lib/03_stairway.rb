
def game(display)
  step = 0
  step_number = 0
  while step < 10
    dice_roll = rand(1..6)
    step_number += 1
    if display #consition qui permettra l'affichage ou non
      puts "Tu as obtenu #{dice_roll}"
    end
    if dice_roll == 5 || dice_roll == 6
      step += 1
      if display
        puts "Tu montes d'une marche, tu es à la marche #{step}."
      end
    elsif dice_roll == 1
      if step == 0
        if display
          puts "Tu restes sur la marche 0."
        end
      else
        step -= 1
        if display 
          puts "Tu descends d'une marche, tu retournes à la marche #{step}."
        end
      end
    else
      if display
        puts "Tu ne bouges pas, tu es toujours à la marche #{step}."
      end
    end
  end
  if display
    puts "Bravo ! Tu as atteint la 10e marche \u{1F37B}."
  end
  return step_number
end

def average_finish_time
  steps_array = []
  100.times do
    steps_array << game(false) #car ici à chaque itération la méthode game retourne la valeur de step_number. False sert à éviter d'afficher 100 fois les résultats de chaque partie
  end
  average = steps_array.sum / steps_array.size.to_f
  return average
end

def perform
  game(true) #le fait de mettre true ici permettra d'afficher les puts de ma méthode game
  puts ""
  puts "Sur 100 parties il faut en moyenne #{average_finish_time} tours de jeux pour atteindre la marche 10."
end

perform