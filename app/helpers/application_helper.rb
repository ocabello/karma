module ApplicationHelper
    
    def sortable(column, title = nil)
      title ||= column.titleize
      css_class = (sort_column == column) ? "asc" : nil
      direction = "asc"
      link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end

end
