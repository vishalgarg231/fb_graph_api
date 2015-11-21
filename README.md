[![Gem Version](https://badge.fury.io/rb/fb_graph_api.svg)](https://badge.fury.io/rb/fb_graph_api)

# FbGraphApi !! Kudos !!

Ruby wrapper for [Facebook Graph APIs](https://developers.facebook.com/docs/graph-api).

You don't need to be a registered user of these APIs to use this gem.

__Features__

* Profile Details
* Profile Picture

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fb_graph_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fb_graph_api

## Usage

### Configuration Options

You can configure credentials via `FbGraphApi::Profile.new`:

```ruby

Profile = FbGraphApi::Profile.new(facebook_user_access_token)

```

User profile details:


```ruby

Profile.info

```

User profile details:

```ruby

Profile.picture

 or

Profile.picture('large')

```

## Documentation

Documentation is available [here](http://www.rubydoc.info/gems/fb_graph_api)

Some usage examples are also available [here](example/mock.rb)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Contributing

1. Fork it ( https://github.com/vishalgarg231/facebook_graph_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
