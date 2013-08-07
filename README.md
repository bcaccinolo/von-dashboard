# Von::Dashboard

Dashboard interface for Von https://github.com/blahed/von

## Installation

Add this line to your application's Gemfile:

    gem 'von-dashboard'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install von-dashboard

## Usage

Add this rack application to your Rails routes:

```ruby
mount Von::Dashboard::Web, :at => "von"
```

You can now reach it from `HOSTNAME/von`.




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
