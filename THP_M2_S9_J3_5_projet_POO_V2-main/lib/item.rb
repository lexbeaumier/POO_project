require 'csv'

class Item
attr_reader :id, :name, :price, :quantity, :brand 

  def initialize(id, name, price, quantity, brand)
    @id = id
    @name = name
    @price = price
    @quantity = quantity
    @brand = brand
  end


  def self.all
    all_items = []

    CSV.foreach("db/item.csv") do |line|
      item = Item.new(line[0], line[1], line[2], line[3], line[4])
      all_items << item
    end
    return all_items  
  end

  def self.one_item(item_id)
    CSV.foreach("db/item.csv") do |line|
      if line[0].to_i == item_id.to_i 
        selected_item = Item.new(line[0], line[1], line[2], line[3], line[4])
        return selected_item
      end
    end
  end

end

