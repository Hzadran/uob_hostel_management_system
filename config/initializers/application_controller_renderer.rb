# Be sure to restart your server when you modify this file.

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )
Rails.application.config.assets.precompile += %w( freelancer/manifest.js freelancer/manifest.css )
Rails.application.config.assets.precompile += %w( creative/manifest.js creative/manifest.css )