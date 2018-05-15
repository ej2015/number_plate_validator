# NumberPlateValidator

This gem provides a validator for license plate validation. At the moment it only supports Singapore plates with a checksum. But work is ongoing to expand it to special plates and other countries and regions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'number_plate_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install number_plate_validator

## Usage

Initialize validator:
   validator =  NumberPlateValidator.validator("SG")

Check if it is valid:
   validator.is_valid?("EJ81D")
   ## true
   
   validator.is_valid?("EJ81E")
   ## false

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ej2005/number_plate_validator.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

