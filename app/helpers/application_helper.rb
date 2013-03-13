module ApplicationHelper
  def sortable(column, title=nil)
    title ||= column.titleize
    sort_order = (column == params[:sort] && params[:sort_order] == 'asc') ? 'desc' : 'asc'
    if params[:limit]
      link_to title, {:sort => column, :sort_order => sort_order, :limit => :true}, :class => "sortheader"
    else 
      link_to title, {:sort => column, :sort_order => sort_order}, :class => "sortheader"
    end
  end
end
