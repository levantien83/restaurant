module ApplicationHelper
  def sort_by_value(sort_by)
    case sort_by
    when "Name"
      "name"
    when "Highest"
      "price"
    when "Lowest"
      "price desc"
    else
      "id"
    end
  end
end
