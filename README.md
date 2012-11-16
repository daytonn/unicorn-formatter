#UnicornFormatter

Based on the brilliant [unicornleap](https://github.com/sdegutis/unicornleap) by sdegutis, this is a simple rspec formatter to make the majestic unicorn leap across your screen every time your specs pass.

![image](https://github.com/daytonn/unicorn-formatter/blob/master/screenshot.png)

#Installation

## Installing unicornleap

You first need to download and build [unicornleap](https://github.com/sdegutis/unicornleap) using make. There are instructions available in the orignal repository but here is a quick setup of unicornleap:

    git clone https://github.com/sdegutis/unicornleap.git
    cd unicornleap
    make
    ln -s ./unicornleap /usr/local/bin/unicornleap

## Installing uniorn-formatter

Put `unicorn-formatter` in your Gemfile:

    gem 'unicorn-formatter'

Then install it with bundler:

    bundle install

Your all set, just be sure to run your specs with `--format default --format UnicornFormatter`. You don't need to use the default formater but you have to use two formatters since the unicorn formatter does nothing but run the unicornleap command if you pass all your tests.

If you want to set your default formats and not have to specify the format every time you run your specs. Simply, create a `.rspec` file in your home directory and add the following line:

    --color --format default --format UnicornFormatter

Again, you can swap out the `default` formatter for any other rspec formatter. I personally recommend combining this formatter with the [nyan-cat-formatter](https://github.com/mattsears/nyan-cat-formatter).

    --color --format NyanCatFormatter --format UnicornFormatter

##Contributing to unicorn-formatter

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

##Copyright

Copyright (c) 2012 Dayton Nolan. See LICENSE.txt for
further details.

