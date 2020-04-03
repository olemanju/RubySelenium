module Purchaseble

  def purchase(item)
    "#{item} has been Purchased"
  end
end

class Bookstore
  include Purchaseble
end

class SuperMarket
  include Purchaseble
end

class Storeshop < SuperMarket

end

book = Bookstore.new
p book.purchase("Core Java")

supershop= SuperMarket.new
p supershop.purchase("Banana")


store= Storeshop.new
p store.purchase("Tea powder")