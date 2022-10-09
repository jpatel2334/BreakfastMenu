
class Breakfast # eggs toasst coffee
  @@returnstring = ""
  def initialize(component)
    @component = component
  end

  def order
    @@returnstring += "Breakfast: " + @component.order
    @@returnstring
  end
end

class Eggs < Breakfast
  def initialize(component)
    @component = component
  end

  def order
    "Eggs " + @component.order
  end
end

class Toast < Breakfast
  def initialize(component)
    @component = component
  end

  def order
    "Toast " + @component.order
  end
end

class Coffee < Breakfast
  @@orderCount = 0
  def initialize
    @@orderCount += 1
  end

  def order
    @@orderCount == 1 ? "Coffee" : "Coffee(" + @@orderCount + ") "
  end
end

input = gets

input = input.split(" ")

orderedItems = input[1].split(",")
returnString = ""
case input[0]
when "Breakfast"
  coffeeCount = 0
  returnString += "Breakfast: "
  orderedItems.each do |item|
  case item
    when "1"
      returnString += "Eggs, "
    when "2"
    returnString += "Toast, "
    when "3"
    coffeeCount += 1
  end
  end

  if coffeeCount == 1
    returnString += "Coffee"
  elsif coffeeCount > 1
    returnString += "Coffee(#{coffeeCount})"
  end
when "Lunch"
  sideCount = 0
  hasDrink = false
  orderedItems.each do |item|
    case item
    when "1"
      returnString += "Sandwich, "
    when "2"
      sideCount += 1
    when "3"
      returnString += "Soda "
    end
  end

  if sideCount == 1
    returnString += "Coffee"
  elsif sideCount > 1
    returnString += "Coffee(#{sideCount})"
  end
end

order = Breakfast.new(Eggs.new(Eggs.new(Toast.new(Coffee.new))))

puts order.order
