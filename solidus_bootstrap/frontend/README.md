# Spree Bootstrap (Frontend)

[![Build Status](https://api.travis-ci.org/200Creative/spree_bootstrap_frontend.png?branch=master)](https://travis-ci.org/200Creative/spree_bootstrap_frontend)
[![Code Climate](https://codeclimate.com/github/200Creative/spree_bootstrap_frontend.png)](https://codeclimate.com/github/200Creative/spree_bootstrap_frontend)

### Switches out [Spree](https://github.com/spree/spree)’s entire frontend for a bootstrap 3 powered frontend.

This has several large advantages:

- Fully responsive - Mobile, tablet and desktop. With custom grids for each, collapsing elements, and full HDPI support. Current spree only goes half way.
- Just 44 lines of custom SCSS, replacing 1328 lines of undocumented spree CSS. Plus most of these lines only add some visual style to the header and footer and can be removed.
- The entire frontend can be easily customized: colours, grid, spacing, etc, by just overriding [variables from bootstrap](https://github.com/twbs/bootstrap-sass/blob/master/vendor/assets/stylesheets/bootstrap/_variables.scss) - giving a custom store design in minutes.
- Bootstrap has some of the most [robust documentation](http://getbootstrap.com/css) of any framework, and a hugely active community. As this port uses only default bootstrap it means that entire spree frontend layout is documented by default.
- Sites like [bootswatch](http://bootswatch.com) allow for one-file bootstrap drop-in spree themes.
- Lots of [spree community will for bootstrap](https://groups.google.com/forum/#!searchin/spree-user/bootstrap/spree-user/B17492QdnGA/AF9vEzRzf4cJ).
- Though this uses ‘full bootstrap’ for simplicity, you can remove the unused Bootstrap components you don’t require for minimal file sizes / weight.
- Bootstrap is one of the largest most active open source projects out there - maintaining an entire framework just for spree makes little sense. Forget about cross browser bugs. Woo!

Overview
-------

This stays as closely to the original spree frontend markup as possible. Helper decorators have been kept to a bare minimum. It utilises the [SCSS port](https://github.com/twbs/bootstrap-sass) of bootstrap 3 to keep inline with existing spree practices. It also includes support for `spree_auth_devise`.

[![home page](http://i.imgur.com/QlwZwS8.png)](http://i.imgur.com/2Ycr8w8.png)
[![home page](http://i.imgur.com/6eoQmfi.png)](http://i.imgur.com/XLi5DAs.png)
[![home page](http://i.imgur.com/D154fb4.png)](http://i.imgur.com/UdKueAQ.png)
[![home page](http://i.imgur.com/HutvtWF.png)](http://i.imgur.com/mis2XHY.png)
[![home page](http://i.imgur.com/pKUbyMu.png)](http://i.imgur.com/hF0IjWI.png)
[![home page](http://i.imgur.com/bkYVBfh.png)](http://i.imgur.com/U06g9Jn.png)
[![home page](http://i.imgur.com/uHwYVPA.png)](http://i.imgur.com/Ozh5vQr.png)


Installation
-------

**NOTE: The master branch is developed against edge. Use a stable branch for production.**

Add the following to your gemfile. The currently supported and updated branches are `master` (edge), `2-2-stable`, and `2-3-stable`.

```ruby
gem 'spree_bootstrap_frontend', github: '200Creative/spree_bootstrap_frontend', branch: 'master'
```

And run

```bash
bundle install
```

Then copy the default stylesheets into your project

```bash
rails generate spree_bootstrap_frontend:install
```

You'll want to select to overwrite `all.css`. Done.

Customizing
-------

Running the above `spree_bootstrap_frontend:install` command copies the stylesheet to `app/assets/stylesheets/spree/frontend/spree_bootstrap_frontend.css.scss`. Use this as your base stylesheet and edit as required.

To style your spree store just override the bootstrap 3 variables. The full list of bootstrap variables can be found [here](https://github.com/twbs/bootstrap-sass/blob/master/vendor/assets/stylesheets/bootstrap/_variables.scss). You can override these by simply redefining the variable before the `@import` directive.
For example:

```scss
$navbar-default-bg: #312312;
$light-orange: #ff8c00;
$navbar-default-color: $light-orange;

@import "bootstrap";
```

This uses the [bootstrap-sass](https://github.com/twbs/bootstrap-sass) gem. So check there for full cutomization instructions.

It’s quite powerful, here are some examples created in ~10 minutes with a few extra SCSS variables, no actual css edits required:

[![layout](http://i.imgur.com/kppJiFS.png)](http://i.imgur.com/m3zKV0s.png)
[![layout](http://i.imgur.com/x92TXYh.png)](http://i.imgur.com/eNyNFSg.png)

Contributing
-------

**Please fork and make a pull request.**

Spree edge templates were last synced at spree/spree@b07b838. Feel free to patch in any newer changes and update this SHA.

**Tests.** To get this to a stage that it can be maintained moving forwards getting all tests passing is the highest priority.

- Raise bugs in github’s [issues tracker](https://github.com/200Creative/spree_bootstrap_frontend/issues).
- Further discussion can be had in the [spree google group](https://groups.google.com/forum/#!forum/spree-user).

Running tests
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```bash
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_bootstrap_frontend/factories'
```

Licence
-------

Copyright Alex James ([200creative.com](http://200creative.com)) and released under the BSD Licence.
