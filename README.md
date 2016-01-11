[![Gem Version](http://badge.fury.io/rb/bootstrap-toggle-rails.png)](http://badge.fury.io/rb/bootstrap-toggle-rails)

# Bootstrap Toggle Rails

[Bootstrap Toggle](http://www.bootstraptoggle.com/) is a highly flexible Bootstrap plugin that converts checkboxes into toggles.

`bootstrap-toggle-rails` is an unofficial gem which integrates this Bootstrap plugin with the Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap-toggle-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-toggle-rails

## Usage

To load the required assets in your application add the appropriate line to your application.js/application.css (depending on whether you use Bootstrap in version 3 or 2):

`app/assets/javascripts/application.js`:

```javascript
//= require bootstrap-toggle
```

or in case of Bootstrap 2:

```javascript
//= require bootstrap2-toggle
```

`app/assets/stylesheets/application.css`:

```
*= require bootstrap-toggle
```

or in case of Bootstrap 2:

```
*= require bootstrap2-toggle
```

### Initialization

To replace a checkbox with toggles just add the `data-toggle="toggle"` attribute to the checkbox, e.g.:

```html
<input type="checkbox" checked data-toggle="toggle">
```

Remember: this kind of initialization does not seem to be compatible to [Turbolinks](). If you use Turbolinks you should manually initialize with JavaScript and also attach the `page:change` event fired by Turbolinks, e.g.:

```javascript
$(document).on('ready page:change', function() {
  $('input[type="checkbox"].toggle').bootstrapToggle(); // assumes the checkboxes have the class "toggle"
});
```

For more documentation see [bootstraptoggle.com](http://www.bootstraptoggle.com/) or their [Github project](https://github.com/minhur/bootstrap-toggle/).


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rkallensee/bootstrap-toggle-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT), just as the "Bootstrap Toggle" plugin itself.

