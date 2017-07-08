# db:model

I like migrations in Ruby on Rails. If you have only a few models in the project and you need to change something in the table you can safely race the new migration and enjoy life. But if the models are several dozen and the migration account goes to hundreds then the joy disappears.
To simplify the work in large projects this gem was created. Using it you can accurately save the model data to a file then make changes to the database and reload the objects back into the model.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'db-model'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install db-model

## Usage

To work with single model use the following tasks.

Dump rails model Name into file spec/fixtures/names.yml  
```bash
$ rails db:model:dump[name]
```
Load from file spec/fixtures/names.yml to model Name 
```bash
$ rails db:model:load[name]
```
Migrate model Name down 
```bash
$ rails db:model:down[name]
```
Migrate model Name up 
```bash
$ rails db:model:up[name]
```
Migrate down and then up 
```bash
$ rails db:model:redo[name]
```
Reset model: dump, migrate down, then up and load 
```bash
$ rails db:model:reset[name]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/db-model. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Db::Model project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/db-model/blob/master/CODE_OF_CONDUCT.md).
