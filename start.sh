cat > /tmp/Gemfile <<RUBY
source "https://rubygems.org"
gem "jekyll", ">= 3.9.3"
gem "jekyll-sitemap", "~> 1.4"
gem "kramdown", "~> 2.3"
gem "kramdown-parser-gfm", "~> 1.1"
gem "webrick", "~> 1.8"
RUBY

export BUNDLE_GEMFILE=/tmp/Gemfile
# production env prevents `jekyll serve` from overwriting site.url with the
# bind address (0.0.0.0); _config_local.yml keeps links pointing at localhost.
export JEKYLL_ENV=production
bundle install
exec bundle exec jekyll serve --force_polling --host 0.0.0.0 --config _config.yml,_config_local.yml
