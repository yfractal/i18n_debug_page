# I18n Debug Page
Mountable rails engin for rails app to check i18n translations in page.

When we develop a rails app we want to get better debug info. The gem [i18n-debug](https://github.com/fphilipe/i18n-debug) provide a very handy way to present rails translations' lookup.

But the log is mixed in rails log and most time the log is really long. It's better if we have seperate place to present such thing, so I18n Debug Page comes.

## Example
<img src="https://raw.githubusercontent.com/yfractal/i18n_debug_page/master/assets/Screen%20Shot%202017-02-18%20at%209.05.42%20AM.png" />

## Install

```ruby
# Gemfile
gem 'i18n_debug_page'
```

Run:

```bash
$ bundle install
```

Mount the engine
```ruby
# config/routes.rb
mount I18nDebugPage::Engine => "/"
```

Then you can find i18n debug log in path `/i18n_debug_logs`

## TODO
- Provide better UI
- Make the installation more easier

## Additional Information
This gem was inspired by [status-page](https://github.com/rails-engine/status-page) and [i18n-debug](https://github.com/fphilipe/i18n-debug)

## License

The MIT License (MIT)
