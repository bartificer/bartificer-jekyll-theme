# jekyll-theme-bartificer

A Jekyll theme for use on GitHub pages for Bartificer Creations open source projects and tutotial series.


## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-bartificer"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-bartificer
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-bartificer

## Usage

### Set a Site Logo

Add the desired logo as the file `assets/logo.png`. The logo should be square, and ideally 512px on each side.

### Add Navbar Links

To add links to the navigation bart under the logo create the file `_includes/sitenav-nav-items.html` and add Bootstrap 4 nav items as list items, e.g.:

```html
<li class="nav-item">
    <a class="nav-item" href="https://bartb.ie/">Bart's Home Page</a>
</li>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-bartificer.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

