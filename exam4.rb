require 'json'

def sort_by_price_ascending(json_string)
    json_object = JSON.parse json_string.gsub('=>', ':')
    json_object.sort { |a, b| [a['price']] <=> [ b['price']] }
end
  
  puts sort_by_price_ascending('[{"name":"eggs","price":1},{"name":"coffee","price":9.99},{"name":"rice","price":4.04}]')