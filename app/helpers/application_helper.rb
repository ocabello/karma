module ApplicationHelper
    
    def sortable(column, title = nil)
      title ||= column.titleize
      css_class = column == sort_column ? "current #{"asc"}" : nil
      direction = "asc"
      link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end

end
