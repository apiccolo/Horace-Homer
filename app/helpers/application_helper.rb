module ApplicationHelper
  
  def error_report(obj)
    tmp = ""
    if obj.errors.any?
      tmp = pluralize(obj.errors.count, "erro")
      tmp = content_tag(:h2, "Houve #{tmp} com esse objeto #{obj.class}:")
      
      aux = ""
      obj.errors.full_messages.each do |msg|
        aux += content_tag(:li, msg)
      end
      tmp += content_tag(:div, content_tag(:ul, aux, nil, false), :id => "error_explanation")
    end
    return tmp
  end
end
