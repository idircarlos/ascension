# Documentation site

The documentation site is isolated in this directory and uses `jekyll-vitepress-theme`.

Requirements:

- Ruby 3.1 or newer
- Bundler

Run it from the repository root with PowerShell:

```powershell
Set-Location docs
bundle install
bundle exec jekyll serve --livereload
```

Open `http://127.0.0.1:4000` in a browser. Set `url` and `baseurl` in `_config.yml` before publishing the site.
