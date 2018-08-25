# simple-delimiter

This is a simple reload of a 10 year old gem dubbed "Commatose".
I've simply fixed it up to more modern standards.

Here's how it works. By default, it delimits every 3 with a ","

```ruby
123456.to_sc
# => "123,456"

123456.789.to_sc
# => "123,456.789"
```

It also supports custom delimiters

```ruby
123456.to_sc("_")
# => "123_456"

123456.789.to_sc("_")
# => "123_456.789"
```

As well as how often it delimits

```ruby
123456.to_sc(";", 2)
# => "12;34;56"

123456.789.to_sc(";", 2)
# => "12;34;56.789"
```
