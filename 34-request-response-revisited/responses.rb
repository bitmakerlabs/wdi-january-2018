require 'httparty'

response = HTTParty.get('http://localhost:3000/monsters')
json_response = JSON.parse(response.body)

