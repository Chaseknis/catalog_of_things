class Author
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = Random.rand(1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    items << item
    item.author = self
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
