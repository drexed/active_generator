# ActiveGenerator

[![Gem Version](https://badge.fury.io/rb/active_generator.svg)](http://badge.fury.io/rb/active_generator)
[![Build Status](https://travis-ci.org/drexed/active_generator.svg?branch=master)](https://travis-ci.org/drexed/active_generator)
[![Coverage Status](https://coveralls.io/repos/github/drexed/active_generator/badge.svg?branch=master)](https://coveralls.io/github/drexed/active_generator?branch=master)

ActiveGenerator extends the base rails generators with commonly used generators.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_generator

## Table of Contents

* [Configuration](#configuration)
* [Environment](#environment)
* [Initializer](#initializer)
* [Locale](#locale)
* [Service](#service)
* [View](#view)

## Configuration

Generates an environment file in the `config/initalizers` directory.

**Options:**
 * autoload_controller_generator_locale
 * autoload_helper_generator_locale
 * autoload_job_generator_locale
 * autoload_mailer_generator_locale
 * autoload_model_generator_locale
 * autoload_service_generator_locale
 * autoload_task_generator_locale
 * autoload_view_generator_locale

`rails generate active_generator:install` will generate the following `active_generator.rb` file:

```ruby
# config/initalizers/active_generator.rb

ActiveGenerator::Settings.configure do |config|
  config.autoload_controller_generator_locale = true
  config.autoload_helper_generator_locale = true
  config.autoload_job_generator_locale = true
  config.autoload_mailer_generator_locale = true
  config.autoload_model_generator_locale = true
  config.autoload_service_generator_locale = true
  config.autoload_task_generator_locale = true
  config.autoload_view_generator_locale = true
  config.test_framework = 'test_unit'
end
```

## Environment

Generates an environment file in the `config/environments` directory.

**Options:**
 * environment: development, test, production

`rails generate environment staging production` will generate the following `staging.rb` file:

```ruby
# config/environments/staging.rb

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  ~~~~~~~~~~~~~~~~~~ OMITED IN README ~~~~~~~~~~~~~~~~~~
end
```

## Initializer

Generates an initializer file in the `config/initializers` directory.

`rails generate initializer stripe` will generate the following `stripe.rb` file:

```ruby
# config/initializers/stripe.rb

# TODO:
  # Add initializer code here.
```

## Locale

Generates an initializer file in the `config/locales` directory.

**Generators:**
 * api
 * controller
 * helper
 * job
 * mailer
 * model
 * service
 * task
 * uploader
 * view

**Options:**
 * language: 2, 4, 6, and 6 character prefix

`rails generate locale:controller admin/user en-GB` will generate the following `user.yml` file:

```ruby
# config/locales/en-GB/controller/admin/user.yml

#==================================================
# Table of Contents
#==================================================
# V1
  # Test
    # Actions
    # Methods

en-GB:
  controllers:
    v1:
      test:

        # Actions
        #--------------------------------------------------
        actions:
          todo: 'TODO'

        # Methods
        #--------------------------------------------------
        methods:
          todo: 'TODO'
```

## Service

Generates an service file in the `app/services` directory.

`rails generate service social/twitter` will generate the following `twitter.rb` file:

```ruby
# app/services/social/twitter.rb

class Social::Twitter
  # TODO:
    # Add service code here.
end
```

## View

Generates an view file in the `app/views` directory.

`rails generate view social/twitter index` will generate the following `index.html.erb` file:

```ruby
# app/views/social/twitter/index.html.erb

<!-- TODO: -->
  <!-- Add view code here. -->
```

## Contributing

Your contribution is welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
