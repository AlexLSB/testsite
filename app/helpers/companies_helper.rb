module CompaniesHelper

def nested_companies(companies)
  companies.map do |message, sub_companies|
    render(message) + content_tag(:div, nested_companies(sub_companies), :class => "nested_companies")
  end.join.html_safe
end


end
