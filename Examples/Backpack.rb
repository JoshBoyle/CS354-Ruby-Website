# Backpack.rb
# Author Braeden LaCombe
# Creates a virtual 'backpack' that holds objects. The pack has a maxiumum size of objects that it can hold


class Backpack
  # Marks the sizing and an initial Hash for the backpack
  def initialize(max_size)
    @max_size = max_size
    @items = Hash.new(0)
  end

  def addItem(item, amount)
    # Checks to make sure the there are enough open slots for the items being added
    if totalItems + amount <= @max_size
      @items[item] += amount
    else
      puts "Error: Not enough space in the backpack for #{amount} #{item}(s)."
    end
  end

  # Giving two inputs allows us to only take a partial amount of one of the items in the backpack
  def removeItem(item, amount)
    #Checks for if we have both a valid item with key? and enough of the item
    if @items.key?(item) && @items[item] >= amount
      @items[item] -= amount
    else
      puts "Error: Not enough #{item} in the backpack."
    end
  end

  # These are what would be a tyipcal 'getter function'
  def checkAmount(item)
    @items[item]
  end

  def totalItems
    @items.values.sum
  end

  # Could be listed as a toString function to show the contents of the pack
  def printBackpack
    puts "Current Backpack:"
    @items.each { |item, amount| puts "#{item}: #{amount}" }
    puts "Total Items: #{totalItems}"
  end
end

# Testing and example for the backpack being filled, and exceedings the maxiumum amounts of items to add
max_bag_size = 30
backpack = Backpack.new(max_bag_size)

backpack.addItem("apple", 10)
backpack.addItem("banana", 15)
backpack.addItem("orange", 20)

backpack.printBackpack

backpack.removeItem("banana", 5)
backpack.printBackpack

backpack.addItem("grapes", 5)
