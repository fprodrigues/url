# URL Parse
###### Developed in ruby on rails with Nokogiri gem

Demo in Heroku [Parse Url](https://fprodriguesurlparse.herokuapp.com/) (online on 7/08/2016).

How it works?

- [ ] Add a valid url and click in "Create"
- [ ] Find you url and click in "Show"
- [ ] See the page elements

The secret is in the model.
```
  pagina = Nokogiri::HTML (open(url))
	self.title = pagina.css("title").text
```
And in add parse elements in arrays, for example:
```
pagina.css("h1").each do |h1n|
 	 self.h1.push(h1n.text)
end
```

