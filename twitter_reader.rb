require 'hpricot'
require 'open-uri'

doc = Hpricot(open('http://twitter.com/caelum'))
item = doc / ".stream-item"
item.each do |item|
tweet = item / ".tweet .js-tweet-text"
puts tweet.inner_text
puts "___________\n\n"
end