module OrderedChildren
  def orderedChildren(item)
    item.children.sort { |a,b| (a[:order] || 0) <=> (b[:order] || 0)}
  end
end