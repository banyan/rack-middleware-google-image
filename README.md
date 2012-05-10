# rack-middleware-google-image [![Build Status](https://secure.travis-ci.org/banyan/rack-middleware-google-image.png)](http://travis-ci.org/banyan/rack-middleware-google-image)

![image](http://i.imgur.com/LEnwb.png?1)

Rack middleware to response any image file via google search

The original idea comes from [here](http://kimoto.hatenablog.com/entry/2012/05/06/113043)

## Installation

Add this line to your application's Gemfile:

    gem 'rack-middleware-google-image'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-middleware-google-image

## Synopsis

    require 'rack-middleware-google-image'

    use Rack::GoogleImage

## Example

    $ cd example
    $ gem install rack
    $ rackup # => then browse http://localhost:9292

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
