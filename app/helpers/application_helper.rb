module ApplicationHelper
  def sortable(title = nil, column)  
    title ||= column.titleize  
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil  
    font_icon = (column == sort_column) ? "<i class=\"fi-up-arrow small\"></i>" : nil  
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"  
     link_to raw("#{font_icon} #{title}"), {:sort => column, :direction => direction}, {:class => css_class}  
  end  
end
