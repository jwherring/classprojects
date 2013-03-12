module ApplicationHelper
  def sortable(column, title=nil)
    title ||= column.titleize
    sort_order = (column == params[:sort] && params[:sort_order] == 'asc') ? 'desc' : 'asc'
    link_to title, {:sort => column, :sort_order => sort_order}, :class => "sortheader"
  end
end
