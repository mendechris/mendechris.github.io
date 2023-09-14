#Dictionary for game to choose a word from.
def word_choose(num)
  word_hash = {}
  str_a = "abruptly absurd abyss affix askew avenue awkward axiom azure" 
  str_b = " bagpipes bandwagon banjo bayou beekeeper bikini blitz blizzard boggle bookworm boxcar boxful buckaroo buffalo buffoon buxom buzzard buzzing buzzwords"
  str_c = " caliph cobweb cockiness croquet crypt curacao cycle"
  str_d = " daiquiri dirndl disavow dizzying duplex dwarves"
  str_e = " embezzle equipespionage euouae exodus"
  str_f = " faking fishhook fixable fjord flapjack flopping fluffiness flyby foxglove frazzled frizzled fuchsia funny"
  str_g = " gabby galaxy galvanize gazebo giaour gizmo glowworm glyph gnarly gnostic gossip grogginess"
  str_h = " haiku haphazard hyphen hallelujah honorific holomorphic"
  str_i = " iatrogenic icebox injury ivory ivy"
  str_j = " jackpot jaundice jawbreaker jaywalk jazziest jazzy jelly jigsaw jinx jiujitsu jockey jogging joking jovial joyful juicy jukebox jumbo"
  str_k = " kayak kazoo keyhole khaki kilobyte kiosk kitsch kiwifruit klutz knapsack"
  str_l = " larynx lengths lucky luxury lymph"
  str_m = " marquis matrix megahertz microwave mnemonic mystify"
  str_n = " naphtha nightclub nowadays numbskull nymph"
  str_o = " onyx ovary oxidize oxygen omicron"
  str_p = " pajama peekaboo phlegm pixel pizazz pneumonia polka pshaw psyche puppy puzzling"
  str_q = " quartz queue quips quixotic quiz quizzes quorum"
  str_r = " razzmatazz rhubarb rhythm rickshaw"
  str_s = " schnapps scratch shiv snazzy sphinx spritz squawk staff strength strengths stretch stronghold stymied subway swivel syndrome"
  str_t = " thriftless thumbscrew topaz transcript transgress transplant triphthong twelfth twelfths"
  str_u = " unknown unworthy unzip uptown"
  str_v = " vaporize vixen vodka voodoo vortex voyeurism"
  str_w = " walkway waltz wave wavy waxy wellspring wheezy whiskey whizzing whomever wimpy witchcraft wizard woozy wristwatch wyvern"
  str_x = " xylophone"
  str_y = " yachtsman yippee yoked youthful yummy"
  str_z = " zephyr zigzag zigzagging zilch zipper zodiac zombie"
  dictionary = str_a + str_b + str_c + str_d + str_e + str_f + str_g + str_h + str_i + str_j + str_k + str_l + str_m + str_n + str_o + str_p + str_q + str_r + str_s + str_t + str_u + str_v + str_w + str_x + str_y + str_z
  dictionary.split(" ").each.with_index{ |word,i| word_hash[i] = word}

  word_hash[num]
end
#debugger
#checks to see if the guessed letter is included in the hidden word.
def is_include?(arr,char)
  arr.any?{ |ele| ele == char + " "}
end

#Choose difficulty level.
def level(str)
  case str.downcase
    when "h" 
      return "Hard mode"
    when "m"
      return "Intermediate mode"
    when "e"
      return "Easy mode"
    else
      return "invalid"
    end  
end
#Counts the number of unique missing letters.
def missing(str1,str2)
  counter = 0
  str = str1.split("").uniq
  str.each {|ele| counter += 1 if !str2.include?(ele) }
  counter
end
#Gives Hints
def mode(difficulty, play_word, guess_w, letter_track,counter, prng, guess_word,hintcount)
  if difficulty ==  "h"
    if counter == 6
      hint = prng.rand(0...play_word.length)
      while guess_w.include?(play_word[hint])
        hint = prng.rand(0...play_word.length)
      end
      puts "*" * 10
      puts "here's a hint: " + play_word[hint] + " is included in the word." 
      puts "*" * 10
      if !guess_w.include?(play_word[hint])
        a = (0 ... play_word.length).find_all { |i| play_word[i,1] == play_word[hint] } #creates an array with all indices in the word for a correct guess.
        a.each {|num| guess_word[num*2] = play_word[hint]
          guess_w = guess_word.split.join 
        } #replaces the "*" in the guess_word with the correct guess."
      end
      letter_track << play_word[hint] + " "
    end
  end
  if difficulty ==  "m"
    if counter == 7 || counter == 4
      hint = prng.rand(0...play_word.length)
      while guess_w.include?(play_word[hint])
        hint = prng.rand(0...play_word.length)
      end
      puts "*" * 10
      puts "here's a hint: " + play_word[hint] + " is included in the word." 
      puts "*" * 10
      if !guess_w.include?(play_word[hint])
        a = (0 ... play_word.length).find_all { |i| play_word[i,1] == play_word[hint] } #creates an array with all indices in the word for a correct guess.
        a.each {|num| guess_word[num*2] = play_word[hint] 
          guess_w = guess_word.split.join
        } #replaces the "*" in the guess_word with the correct guess."
      end
      letter_track <<play_word[hint] + " "
    end
  end
  if difficulty ==  "e"      
    if missing(play_word, guess_w) > 1 && (counter == 8 || counter == 5 || counter == 3 || counter == 2)
      hint = prng.rand(0...play_word.length)
      while guess_w.include?(play_word[hint])
        hint = prng.rand(0...play_word.length)
      end
      puts "*" * 10
      puts "here's a hint: " + play_word[hint] + " is included in the word." 
      puts "*" * 10
      if !guess_w.include?(play_word[hint])
        a = (0 ... play_word.length).find_all { |i| play_word[i,1] == play_word[hint] } #creates an array with all indices in the word for a correct guess.
        a.each {|num| guess_word[num*2] = play_word[hint] 
          guess_w = guess_word.split.join
        } #replaces the "*" in the guess_word with the correct guess."
      end
      letter_track << play_word[hint] + " "
    end
  end
  hintcount += 1
end
#Final Message
def final(guess_word,play_word)
 if guess_word == play_word

    puts
    p "Congratulations, you win!"
    print "The correct word is \"" + play_word + "\"."
    puts
    print "    \/\\_\_\/\\\n"
    print "   \/`    '\\\n"
    print " === 0  0 ===\n"
    print "   \\   u  \/\   ~~ MEOW!\n"
    print "  \/        \\\n"
    print " \/          \\\n"
    print "\|            \|\n"
    print " \\  \|\|  \|\|  \/\n"
    print "  \\\_oo\_\_oo\_\/#######o"
    #cat from https://www.asciiworld.com/-Cats-.html
  else 
    puts
    p "Sorry, you lose."
    print "The correct word is \"" + play_word + "\"."
    puts
    p "     _.-^^---....,,---_"
    p "  _--                  --_"
    p " <          BOOM!         >)"
    p "  \._                   _./"
    p "     ```--. . , ; .--'''"
    p "           | |   |"
    p "        .-=||  | |=-."
    p "        `-=#$%&%$#=-'"
    p "           | ;  :|"
    p "  _____.,-#%&$@%#&#~,._____"
    puts 

    #Explosion from https://ascii.co.uk/art/explosion
  end  
end

#check to make sure that user entered appropriate guesses. Loops if otherwise.
def inputcheck(guess,letter_track)
  guess = gets.chomp
  while !Alphabet.include?(guess)
    puts "Invalid input"
    puts
    print "Please choose a letter: "
    guess = gets.chomp
  end
  if !is_include?(letter_track,guess)
    letter_track << guess + " "
  else
    while is_include?(letter_track,guess) || !Alphabet.include?(guess)
      puts
      this = !Alphabet.include?(guess)? "Invalid input" : "You have already guessed this letter. "
      puts this
      print "Please try a different guess: "
      guess = gets.chomp
    end
    letter_track << guess + " "
  end
  guess
end

#returns a bomb with appropriate length fuse
def bomb(num)
  fuse1 = "~~~~~~~~*"
  p fuse = "             ." + fuse1[num..-1]
  p bomb1 = "        __//__"
  p bomb2 = "     =         ="
  p bomb3 = "    =           ="
  p bomb4 = "    =           ="
  p bomb5 = "     =         ="
  p bomb6 = "        ====="
end

#run to choose a difficulty level for the game. Will loop if user does not enter one of the three options.
def difficulty
  puts "Please choose a difficulty level:"
    puts "Enter:"
    puts "H for hard mode"
    puts "M for intermediate mode"
    puts "E for easy mode"
    print "Level: "
    mode = gets.chomp

    while level(mode) == "invalid"
      puts
      puts "Please choose a difficulty level: H, M, or E."
      mode = gets.chomp
    end
    puts "-" * 10
    p level(mode)
    puts "-" * 10
    mode
end
hintcount = 0 #counts the number of hints given.
wins = 0
losses = 0
Alphabet = "abcdefghijklmnopqrstuvwxyz".split("") #acceptable input
prng = Random.new #Initiates an rng
tries = 10 #change this to increase/decrease the number of attempts
status = "" #If this is equal to "q" then game ends.
points = 0 #keeps a running total of the points won for all games played in a session.

#Continues game until user chooses to quit.
while status != "q"
  hintcount = 0
  mode = "" #difficulty level
  letter_track = [] #tracks the letters already guessed
  guess = "" #letter guess.
  counter = 0 #counts the number of incorrect guesses.
  hint = 0 #variable to be defined as random number when user gets to 5 incorrect guesses left

  chosen = prng.rand(0..216) #chooses a number between 0 and 211
  play_word = word_choose(chosen) #returns a word related to the random number.
 

  mode = difficulty
  

  guess_word = Array.new(play_word.length, "_ ").join
  guess_w = guess_word.split.join
  puts
  puts "**************************************"
  puts "Welcome to the word-guess game!"
  puts "You have " + tries.to_s + " incorrect tries to guess the word: " + guess_word
  puts "Do it before the bomb explodes!"
  bomb(0)


  #choose a letter
  while (counter < tries && guess_w != play_word)
    puts
    puts
    guess_w = guess_word.split.join
    left = tries - counter #counts the number of tries left.
    puts
    puts "You have " + left.to_s + " incorrect guesses left."
    puts
    print "Please choose a letter: "
    guess = inputcheck(guess,letter_track)
    puts
    puts
    #checks if the guessed letter is included in the word.
    if play_word.include?(guess)
      a = (0 ... play_word.length).find_all { |i| play_word[i,1] == guess } #creates an array with all indices in the word for a correct guess.
      a.each {|num| guess_word[num*2] = guess 
        guess_w = guess_word.split.join} #replaces the "*" in the guess_word with the correct guess."
      p "Great guess!"
    else
      p "Sorry, " + guess + " is not a correct letter."
      counter += 1
      #Gives a hint depending on the difficulty and unguessed letters.
      mode(mode,play_word,guess_w,letter_track,counter,prng,guess_word,hintcount)
    end
    guess = ""
    p "current status: " + guess_word
    puts
    puts "Guessed letters: " + letter_track.join if letter_track.length > 0

   
    #shows ascii bomb with burning fuse
    if counter < 10
     bomb(counter)
    end

  end #Ends the game for the particular word
  #Final message for the winner/loser
  final(guess_w,play_word)
  puts
  puts
  print "~" * 10
  if guess_w == play_word
    wins += 1
    puts
    puts "Previous points: " + points.to_s
    puts
    puts
    print "Bonus Points for number of guesses left and unused hints: " 
    if left/2 - hintcount/2 > 0
      puts left/2-hintcount/2
      points  += left/2 - hintcount/2
    else
      puts 1
      points += 1
    end
    case mode.downcase
      when "h"
        puts 
        puts "You won 5 points for completing the word."
        points += 5
      when "m"
        puts 
        puts "You won 3 points for completing the word."
        points += 3
      when "e"
        puts 
        puts "You won 1 points for completing the word."
        points += 1
    end
  else
    losses += 1
    puts
    puts "Previous points: " + points.to_s


    case mode.downcase
      when "h" 
        puts 
        puts "You lost 3 points"
        points -= 3
      when "m"
        puts 
        puts "You lost 2 points"
        points -= 2
      when "e"
        puts 
        puts "You lost 1 points"
        points -= 1
    end
    puts 
 
  end
  puts
  puts 
  print "You currently have " 
  print points
  print " points."
  puts
  puts "~" * 10
  
  #resets the bomb and letter tracker
  letter_track = []
  fuse1 = ".~~~~~~~~*"

  puts
  puts "Would you like to play again?"
  print  "Press enter to continue or type \"q\" to quit: "
  status = gets.chomp 
  puts "Thank you for playing!" if status == "q"
  puts
  puts "Games won: " + wins.to_s
  puts "Games lost: " + losses.to_s
  puts
  puts
end