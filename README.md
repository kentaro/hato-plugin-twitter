# Hato::Plugin::Twitter [![BuildStatus](https://secure.travis-ci.org/kentaro/hato-plugin-twitter.png)](http://travis-ci.org/kentaro/hato-plugin-twitter)

Hato plugin to send messages via Twitter.

## Configuration

```ruby
Hato::Config.define do
  api_key 'test'
  host    '0.0.0.0'
  port    9699

  # ...

  tag 'test' do
    plugin 'Twitter' do
      consumer_key        'YOUR COMSUMER KEY'
      consumer_secret     'YOUR CONSUMER SECRET'
      access_token        'YOUR ACCESS TOKEN'
      access_token_secret 'YOUR ACCESS TOKEN SECRET'
      message_template    '[<%= args[:tag] %>] <%= args[:message] %>'
    end
  end

  # ...
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'hato-plugin-twitter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hato-plugin-twitter

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

