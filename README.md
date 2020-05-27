# CLIPortfolioProject

This Gem is a handy tool to quickly and effeciently print out daily study lessons used by the Chabad Chassidik group. This Gem scrapes directly from Chabad.org. From there, it is scraping the Hayom Yom and Rambam books. These books focus on both Inspiring thought and Jewish law.  

## Demo
[YouTube](https://www.youtube.com/watch?v=JwZTy2mDuWQ&t=)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'CLI_Portfolio_Project'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install CLI_Portfolio_Project

## Usage

To use this Gem all you have to do is print './bin/daily_study' into your terminal. This will then bring you to our menu. From there you have to option to type "Hayom yom" or "Rambam". Upon choosing Rambam, you will have an further option to see the unabridged version of the text. If one types an non-existent message they will be shown a message asking them to make another selection. Then to exit, type "exit" (you wil then be shown a nice goodbye message). 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'ChaimShcherbina'/CLI_Portfolio_Project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CLIPortfolioProject project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'ChaimShcherbina'/CLI_Portfolio_Project/blob/master/CODE_OF_CONDUCT.md).
