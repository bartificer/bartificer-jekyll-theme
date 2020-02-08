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

### Render Section as an Aside

This theme provides a speical block quote style for asides. Aside block quotes are rendered as secondary Bootstrap alerts.
They should have a top-level header as their first piece of content. An info icon will be injected into the first child.

#### Example

```markdown
> # Aside Header
>
> Aside contents.
{: class="aside"}
```

### Render Section as a Notice

This theme provides a speical block quote style for notices. Notice block quotes are rendered as warning Bootstrap alerts.
They can have a top-level header as their first piece of content. An exclamation icon will be injected into the first child.

#### Example

```markdown
> # Notice Header
>
> Notice contents.
{: class="notice"}
```



### Set a Site Logo

Add the desired logo as the file `assets/logo.png`. The logo should be square, and ideally 512px on each side.

### Add Site Navigation Items

Items can be added to the site navigation by defining an array of hashes named `nav_items` in your `_config.yml` file.

Each hash in the array supports the following keys:

| Key | Type | Required | Description |
| :---: | :---: | :--: | :--- |
| `url` | string | ✅ | The relative or absolute URL the link should lead to. |
| `text` | string | ✅ | The text for the link. |
| `icon` | string | | The classes for a Font Awesome 5 icon, e.g. `'fab fa-twitter'`. |

#### Example:

```yaml
nav_items:
  - text: "Bart's Site"
    url: http://www.bartb.ie/
    icon: "fas fa-globe"
  - text: "Yaml Cheat-Sheet"
    url: https://lzone.de/cheat-sheet/YAML
```

### Define Site Accents

This theme supports two accent colours and an accent font to give the site some unique character.

There needs to be a dark accent colour and a light accent colour. Text rendered in the dark colour
on the light colour as a balkcground must be easy to read and look good.

You can use a web font as your accent font if you import it in your `_sass/custom_webfonts.scss` as described below.

The accent colours and fonts can be set via the `accent` hash in your `_config.yml` file.

The `accent` hash supports the following keys:

| Key | Type | Required | Description |
| :---: | :---: | :--: | :--- |
| `color` | string | | The dark accent colour as a valid CSS colour value. |
| `color_light` | string | | The light accent colour as a valid CSS colour value. |
| `font_family` | string | | The font family to use for accented text as a valid CSS `font-family` value. |

### Add Community Links

Community links can be added to the site navigation and as an alert at the bottom of the page.

To show the community information add a hash named `community` to your `_config.yml` file.

To enable the link in the navibation `community.url` must be set. To enable the alert both
`community.url` and `community.description` must be set.

Additional optional keys can be used to customise the display of the community information.

| Key | Type | Required | Description |
| :---: | :---: | :--: | :--- |
| `url` | string | ✅ | The URL the community link and buttoin should lead to. |
| `description` | Markdown string | | The text to be shown in the community alert in Markdown format. |
| `icon` | string | | The classes for a Font Awesome 5 icon, e.g. `'fab fa-twitter'` to be used in the side navigation and the button in the community alert. |
| `tagline` | string | | The title for the community alert. Defaults to 'Join the Community'. |
| `labels.nav` | string | | The label for the community link in the navigation. Defaults to 'Community'. |
| `labels.button` | string | | The label for the buttin in the community alert. Defaults to 'Join In'. |

#### Example

```yaml
community:
  url: http://www.bartb.ie/contact
  icon: "far fa-envelope"
  labels:
    nav: "Contact"
    button: "Contact Form"
  tagline: "Get in Touch"
  description: "You can get in touch with Bart via his contact form."
```

### Add Custom Styles

This theme is based off Bootstrap so you can alter the look of the site by setting the values of
Bootstap variables in `_sass/custom_bootstrap_vars.scss`.

You can also add custom styles of your own in `_sass/custom_styles.scss`. Styles defined in
this file can extend Bootstap classes.

You can use web fonts in your custom styles, but you should import them in `_sass/custom_webfonts.scss` as described below.

#### Example 1 — Enable Bootstrap Gradients

By default Bootstap gradients are not enabled. They can be enabled by adding the following to your
`_sass/custom_bootstrap_vars.scss`:

```scss
$enable-gradients: true;
```

#### Example 2 — Add Rounded Primary Bootstrap Borders to all Blockquotes

All blockquotes can be made appear is if they were marked up as:

```html
<blockquote class="border border-primary rounded">…</blocquote>
```

By adding the following your `_sass/custom_styles.scss`:

```scss
blockquote{
    @extend .border;
    @extend .border-primary;
    @extend .rounded;
}
```

### User Custom Web Fonts

Web fonts can be used for the accent font or within any custom styles defined in `_sass/custom_styles.scss`. To ensure that works reliably,
add all web font imports to `_sass/custom_webfonts.scss`.

#### Example

```scss
// Import 'Roboto Mono' from Google fonts
@import url('https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap');
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

