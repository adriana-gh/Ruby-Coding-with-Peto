class Restaurant
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_items(*items)
    @items << items
    @items.flatten!
  end

  def remove_item(item_name)
    @items.delete_if { |i| i.name == item_name }
  end

  def place_order(ordered_items, discount: 0)

    order_price = 0
    validate_discount(ordered_items, discount)

    ordered_items.each do |ordered_item|
      item = select_item(ordered_item[:name])
      validate_and_calculate_stock(item, ordered_item[:count])
      order_price += calculate_item_price(item, ordered_item)
    end

    order_price *= (1 - discount)

  end

  private

  def validate_discount(ordered_items, discount)
    raise DiscountError if discount > 0 && ordered_items.map{ |i| i[:discount].to_f }.sum > 0
  end

  def select_item(name)
    items.select { |i| i.name == name }.first
  end

  def validate_and_calculate_stock(item, ordered_quantity)
    raise StockError if item.nil? || item.stock == 0
    item.stock -= ordered_quantity
  end

  def calculate_item_price(item, ordered_item)
    item.price * (1 - ordered_item[:discount].to_f) * ordered_item[:count]
  end

  class StockError < ArgumentError
    def initialize ( message = 'Items not available' )
      super
    end
  end

  class DiscountError < ArgumentError
    def initialize ( message = 'Double discount is not allowed' )
      super
    end
  end

end

class Item
  attr_reader :name, :price
  attr_accessor :stock

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

end