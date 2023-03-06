# frozen_string_literal: true

# class for Restaurants selling Items
class Restaurant
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_items(*items)
    @items += items
  end

  def remove_item(item_name)
    @items.delete_if { |i| i.name == item_name }
    end

=begin
  def place_order(ordered_items, discount: 0)
    return 'Double discount is not allowed' if invalid_discount?(ordered_items, discount)
    return 'Items not available' if incomplete_stock?(ordered_items)

    order_price = 0
    ordered_items.each do |ordered_item|
      item = select_item_by_name(ordered_item[:name])
      order_price += item.calculate_price(ordered_item[:discount])
      item.sell
    end
    order_price * (1 - discount)
  end
=end
  require 'pry'
  def place_order(ordered_items, discount: 0)
    return 'Double discount is not allowed' if invalid_discount?(ordered_items, discount)
    return 'Items not available' unless ordered_items.all? {|oi| items.map(&:name).include?(oi[:name])}

    reserved_items = reserve_items(ordered_items)
    return 'Items not available' if incomplete_stock?(reserved_items)

    reserved_items.each { _1.sell }
    calculate_order_price(ordered_items, discount)
  end

  private

  def incomplete_stock?(items)
    items.any?(&:out_of_stock?)
  end

  def invalid_discount?(ordered_items, discount)
    discount.positive? && ordered_items.sum { |i| i[:discount].to_f }.positive?
  end

  def select_item_by_name(name)
    items.find { |i| i.name == name }
  end

  def reserve_items(items)
    items.map! do |item|
      item = select_item_by_name(item[:name])
      item.reserve(item[:quantity])
      order_price += item.calculate_price(ordered_item[:discount])
    end
  end
end

# class for Items ordered in the Restaurants
class Item
  attr_reader :name, :price
  attr_accessor :stock, :reserved_items

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
    @reserved_items = 0
  end

  def out_of_stock?
    (@stock - @reserved_items).negative?
  end

  def reserve(count)
    @reserved_items = count
  end

  def calculate_price(discount)
    @price * (1 - discount.to_f) * @reserved_items
  end

  def sell
    @stock -= @reserved_items
    @reserved_items = 0
  end
end

restaurant = Restaurant.new('Owls place')
item1 = Item.new('pizza', 10, 10)
restaurant.add_items(item1)
order_items = [ { name: 'burger', count: 1 } ]
puts restaurant.place_order(order_items)