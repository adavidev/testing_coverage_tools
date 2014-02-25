module NavigationHelpers
  def path_to(page_name, params = {})
    case page_name
    when /the list of articles/
      articles_path
    end
  end
  def click_link_with_id(id)
    page.find(id).click
  end
end
World(NavigationHelpers)
