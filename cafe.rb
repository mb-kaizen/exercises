class Cafe
  attr_accessor :order, :customer

  def initialize (customer, order)
    @customer = customer
    @order = order
  end

  def call_order
    p "#{customer} your #{order} is ready!"
  end
end

starbucks = Cafe.new("Michael", "coffee")
starbucks.call_order