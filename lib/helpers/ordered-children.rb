module OrderedChildren
  def orderedChildren(item)
    puts item.identifier
    foo = item.children.sort { |a,b| (a[:order] || 0) <=> (b[:order] || 0)}
    foo.each {|bar| print "  "; puts bar.identifier}
    foo
  end
end