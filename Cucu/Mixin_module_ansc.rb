module Purchaseble

  def purchase(item)
    "#{item} has been Purchased"
  end
end

class Bookstore
  include Purchaseble

  def purchase(item)
    "User has purchased has textbook #{item}"
  end
end

class SuperMarket
  include Purchaseble

  def purchase(item)
    " #{item} Super market is opened and purchased"
  end
end

class Storeshop < SuperMarket
  def purchase(item)
    "in local shop i have puerchased #{item}"
  end
end

p Bookstore.ancestors
book = Bookstore.new
p book.purchase("Core Java")

supershop= SuperMarket.new
p supershop.purchase("Banana")

p Storeshop.ancestors
store= Storeshop.new
p store.purchase("Tea powder")