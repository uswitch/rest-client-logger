# RestClientLogger

Instruments the [RestClient](https://github.com/rest-client/rest-client) gem and logs requests made with RestClient to the Rails development log.

    Started GET "/" for 127.0.0.1 at 2014-05-02 17:09:49 +0100
    Processing by WelcomeController#index as HTML
    RestClient GET (45.7ms)  http://www.google.com?q=vikings  {"User-Agent"=>"A browser"}
    Rendered text template (0.0ms)
    Completed 200 OK in 47ms (Views: 0.6ms | ActiveRecord: 0.0ms)

## Installation

Add this line to your Rails application's Gemfile:

    gem 'rest-client-logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rest-client-logger

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
