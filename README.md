# Pencil Pusher Modernized

[![Ruby](https://github.com/GoBigRecruiting65/pencil-pusher/actions/workflows/ruby.yml/badge.svg)](https://github.com/GoBigRecruiting65/pencil-pusher/actions/workflows/ruby.yml)

Fork of `pencil_pusher` that brings it into the modern era (Rails 6+ compatibility, Ruby 2.7+, etc.)

## Compatibility

- Tested with Ruby 2.5, 2.6, 2.7, and 3.0.
- Requires activemodel 6+

## Setup

1. `bundle install`

## Testing

`bundle exec rspec`

## Usage

To use this version of `pencil_pusher` replace:

`gem 'pencil_pusher'`

with:

`gem 'pencil_pusher', git: 'git@github.com:GoBigRecruiting65/pencil-pusher.git', branch: 'main'`
