# NumberPlateValidator
[![CodeFactor](https://www.codefactor.io/repository/github/ej2015/number_plate_validator/badge)](https://www.codefactor.io/repository/github/ej2015/number_plate_validator)
[![Maintainability](https://api.codeclimate.com/v1/badges/cfd4ee89c46c6b642a09/maintainability)](https://codeclimate.com/github/ej2015/number_plate_validator/maintainability)
[![Build Status](https://travis-ci.org/ej2015/number_plate_validator.svg?branch=master)](https://travis-ci.org/ej2015/number_plate_validator)

This gem provides a validator for license plate validation. It iss being actively developed to expand to special plates and more countries and regions. Contributions are welcome.

## Country Support

Singapore: checksumed plates
Malaysia: Not exhaustive. Please check the specs for examples of covered cases


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
Use standard country code to spcify the country. 

```
  ##Initialize validator:
  validator =  NumberPlateValidator.validator("SG")

  ##Check if it is valid:
  validator.is_valid?("EJ81D")
  #=> true
   
  validator.is_valid?("EJ81E")
  #=> false

  ##get the current country code
  validator.country
  #=> "SG"
```

## ActiveModel

A `NumberPlateValidator` is provided with this gem to be used with ActiveModel. You can specify the attribute with the country information with either a symbol or a Proc.

```
class Vehicle < ActiveRecord::Base
  validates :plate_number, number_plate: { country: "SG" }  ##country is fixed to "SG"

  ##or use either of the following to get the country from the attribute country_code
  ##validates :plate_number, number_plate: { country: :country_code }  
  ##validates :plate_number, number_plate: { country Proc.new { |obj| obj.country_code } }
end

```

## Command Line Interface
A CLI is provided to check the plate validity

```
$number_plate validate -c SG EJ81E
$true

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ej2005/number_plate_validator.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

