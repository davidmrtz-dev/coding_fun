require 'json'

def sort_by_price_ascending(json_string)
  items = JSON.parse(json_string)
  sorted = items.sort_by{ |item| [item['price'], item['name']]}
  JSON.generate(sorted)
end

puts sort_by_price_ascending('[{"name":"eggs","price":1},{"name":"coffee","price":9.99},{"name":"rice","price":4.04}]')