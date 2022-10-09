

puts "To exit press 'q'"
while(true)
  input = gets

  if input == "q\n"
    return
  end

  input = input.split(" ")

  orderedItems = input[1].split(",")
  returnString = ""

  case input[0]
  when "Breakfast"

    outputItems = Array.new(3, 0)
    returnString += "Breakfast: "
    incorrectOrderedItem = false
    orderedItems.each do |item|
    case item
    when "1"
      outputItems[0] += 1
    when "2"
      outputItems[1] += 1
    when "3"
      outputItems[2] += 1
    else

      incorrectOrderedItem = true
      next
    end
    end

    if incorrectOrderedItem
      puts "One or more items are not on the menu, please try again!"
      next
    end

    if outputItems[0] == 1
      returnString += "Eggs, "
    else
      puts "Only one serving of Eggs can be ordered!"
      next
    end

    if outputItems[1] == 1
      returnString += "Toast, "
    elsif outputItems[1] == 0
      puts "Side missing, unable to process."
      next
    elsif outputItems[1] > 1
      puts "Only one serving of toast can be ordered!"
      next
    end

    if outputItems[2] == 1
      returnString += "Coffee"
    elsif outputItems[2] > 1
      returnString += "Coffee(#{outputItems[2]})"
    elsif outputItems[2] < 1
      returnString += "Water"
    end


  when "Lunch"

    outputItems = Array.new(3, 0)
    returnString += "Lunch: "
    incorrectOrderedItem = false
    orderedItems.each do |item|
      case item
      when "1"
        outputItems[0] += 1
      when "2"
        outputItems[1] += 1
      when "3"
        outputItems[2] += 1
      else

        incorrectOrderedItem = true
        next
      end
    end

    if incorrectOrderedItem
      puts "One or more items are not on the menu, please try again!"
      next
    end

    if outputItems[0] == 1
      returnString += "Sandwich, "
    elsif outputItems[0] > 1
      puts "Only one Sandwich can be ordered!"
      next
    elsif outputItems[0] < 1
      puts "Main missing, unable to process."
      next
    end

    if outputItems[1] == 1
      returnString += "Chips, "
    elsif outputItems[1] > 1
      returnString += "Chips(#{outputItems[1]}), "
    elsif outputItems[1] == 0
      puts "Side missing, unable to process."
      next
    end

    if outputItems[2] == 1
      returnString += "Soda"
    elsif outputItems[2] < 1
      returnString += "Water"
    elsif outputItems[2] > 1
      puts "Only one soda can be ordered!"
      next
    end

  when"Dinner"

    outputItems = Array.new(4, 0)
    returnString += "Dinner: "
    incorrectOrderedItem = false
    orderedItems.each do |item|
      case item
      when "1"
        outputItems[0] += 1
      when "2"
        outputItems[1] += 1
      when "3"
        outputItems[2] += 1
      when "4"
        outputItems[3] += 1
      else

        incorrectOrderedItem = true
        next
      end
    end

    if incorrectOrderedItem
      puts "One or more items are not on the menu, please try again!"
      next
    end

    if outputItems[0] == 1
      returnString += "Steak, "
    elsif outputItems[0] > 1
      puts "Only one Steak can be ordered!"
      next
    elsif outputItems[0] < 1
      puts "Main missing, unable to process."
      next
    end

    if outputItems[1] == 1
      returnString += "Potatoes, "
    elsif outputItems[1] > 1
      returnString += "Potatoes(#{outputItems[1]}), "
    elsif outputItems[1] < 1
      puts "Side missing, unable to process."
      next
    end

    if outputItems[2] == 1
      returnString += "Wine, Water "
    elsif outputItems[2] < 1
      returnString += "Water"
    elsif outputItems[2] > 1
      puts "Only one Wine can be ordered!"
      next
    end

    if outputItems[3] == 1
      returnString += "Cake"
    elsif outputItems[3] > 1
      puts "Only one Cake can be ordered!"
      next
    elsif outputItems[3] < 1
      puts "Cake must be ordered."
      next
    end

  when "q" #this should never happen
    break

  else
    puts "Command not recognized."
    next

  end

  puts returnString
end

