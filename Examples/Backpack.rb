class Backpack
  def initialize(max_size)
    @max_size = max_size
    @items = Hash.new(0)
  end

  def addItem(item, amount)
    if totalItems + amount <= @max_size
      @items[item] += amount
    else
      puts "Error: Not enough space in the backpack for #{amount} #{item}(s)."
    end
  end

  def removeItem(item, amount)
    if @items.key?(item) && @items[item] >= amount
      @items[item] -= amount
    else
      puts "Error: Not enough #{item} in the backpack."
    end
  end

  def checkAmount(item)
    @items[item]
  end

  def totalItems
    @items.values.sum
  end

  def printBackpack
    puts "Current Backpack:"
    @items.each { |item, amount| puts "#{item}: #{amount}" }
    puts "Total Items: #{totalItems}"
  end
end

# Example Usage:
max_bag_size = 30
backpack = Backpack.new(max_bag_size)

backpack.addItem("apple", 10)
backpack.addItem("banana", 15)
backpack.addItem("orange", 20)

backpack.printBackpack

backpack.removeItem("banana", 5)
backpack.printBackpack

backpack.addItem("grapes", 5)
