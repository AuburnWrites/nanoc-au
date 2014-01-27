module SidebarMenu
  def ext_link_icon
    render 'ext_link_icon'
  end
  def sidebar_menu(menu_items)
    render 'sidebar_menu', menu_items: menu_items, current_item: @item
  end
end