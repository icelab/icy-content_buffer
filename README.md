# `Icy::ContentBuffer`

Content Buffer stores a section of your template for later use. It can be retrieved by passing the block identifier to the the store, and then it can be used in other templates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icy-content_buffer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install icy-content_buffer

## Usage

Making the Content Buffer available to your application:

```ruby
require 'icy-content_buffer'

def initialize
  @content_buffer = Icy::ContentBuffer.new
end
```

Capturing the content:

```ruby
content_buffer.set(:title, "Notes tagged #{category.name}")
```

Or with a block:

```ruby
content_buffer.set :og_meta_tags do
  # structure the content to be captured
end
```

Retrieving the content by its identifier:

```ruby
content_buffer.get(:og_meta_tags)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/icelab/icy-content_buffer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
