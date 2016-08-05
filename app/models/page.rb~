require 'nokogiri'
require 'open-uri'
require 'uri'



class Page < ActiveRecord::Base

before_save :fill_fields


private
def fill_fields

url = self.link

link3 = url.match(/(?:http|https):\/\/[a-z0-9]+(?:[\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(?:(?::[0-9]{1,5})?\/[^\s]*)?/ix) # Mask http

if link3 != nil
 link2 = link3
else 		link2 = "http://" << url.to_s
end

url = link2.to_s

begin
        pagina = Nokogiri::HTML (open(url))
	self.title = pagina.css("title").text
	pagina.css("h1").each do |h1n|
 	 self.h1.push(h1n.text)
	end
	pagina.css("h2").each do |h2n|
	  self.h2.push(h2n.text)	
	end
	pagina.css("h3").each do |h3n|
  	self.h3.push(h3n.text)
	end
	pagina.css("a").each do |an|
  	self.a.push(an.text)
  	self.href.push(an["href"])
	end
	@valor=true
rescue Exception => e
	@valor=false
end

end
end
