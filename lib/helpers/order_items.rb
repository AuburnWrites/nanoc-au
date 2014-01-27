module OrderItems
  def order_items(items)
    items.sort { |a,b| (a[:order] || 0) <=> (b[:order] || 0)}
  end
end