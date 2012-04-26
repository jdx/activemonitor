ActiveMonitor - performance monitoring for Rails applications
==============

[![BuildStatus](https://secure.travis-ci.org/dickeyxxx/activemonitor.png)](http://travis-ci.org/dickeyxxx/activemonitor)

**ActiveMonitor is still an Alpha product! It lies about many of its features!**

ActiveMonitor is a Redis-backed monitoring engine for your Rails application. It
is designed to be easy to integrate, cause insignificant load, and provide
useful performance analysis.

Getting Started
===============

Add ActiveMonitor to your Gemfile with:

````ruby
gem 'devise'
````

Run the generator:

````
$ rails generate active_monitor:install
````

Point to Redis server by setting `ENV["REDIS_URL"]` or for Redis to go (Heroku)
use `ENV["REDIS_TO_GO_URL"]` otherwise ActiveMonitor will attempt to connect to
Redis running at `redis://127.0.0.1:6379`.

If you need finer control over the configuration, let me (@dickeyxxx) know and I
will add more configuration.
