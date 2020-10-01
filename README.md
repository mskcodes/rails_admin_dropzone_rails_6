# RailsAdminDropzoneRails6

Easy to use integration of drag&drop files upload via dropzone.js for rails_admin in rails 6. This gem is an update of [rails_admin_dropzone](https://github.com/luizpicolo/rails_admin_dropzone)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_admin_dropzone_rails_6'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rails_admin_dropzone_rails_6

## Usage

```ruby
class Album < ActiveRecord::Base
  has_many :photos
end

class Photo < ActiveRecord::Base
  belongs_to :album
end
```

The gem will search for the first model that is in a `has_many` attribute and get the first uploader, **in case the gem is not uploading correctly**, you can add this method `create_associated_image` in your model to set the model and attribute that will upload the images as the example below. *This method is not necessary, only if is not uploading correctly*

```ruby
class Album < ActiveRecord::Base
  has_many :photos

  # Method
  def create_associated_image(image)
    photos.create(image: image)
  end
end
```

Add in `config/initialisers/rails_admin.rb`

```ruby
RailsAdmin.config do |config|
  config.actions do
    dashboard
    index
    new

    dropzone do
      only YOUR_MODEL # Example Album
    end

    show
    edit
    delete
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_admin_dropzone_rails_6. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rails_admin_dropzone_rails_6/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsAdminDropzoneRails6 project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_admin_dropzone_rails_6/blob/master/CODE_OF_CONDUCT.md).
