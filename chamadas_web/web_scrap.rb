require 'net/http'
require 'nokogiri'

https = Net::HTTP.new("lgnsedicoes.netlify.app", 443)
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content
