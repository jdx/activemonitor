ActiveMonitor - performance monitoring for Rails applications
==============

[![BuildStatus](https://secure.travis-ci.org/dickeyxxx/activemonitor.png)](http://travis-ci.org/dickeyxxx/activemonitor)

**ActiveMonitor is still an Alpha product! It lies about many of its features!**

ActiveMonitor is a Redis-backed monitoring engine for your Rails application. It
is designed to be easy to integrate, cause insignificant load, and provide
useful performance analysis.

![screenshot](http://f.cl.ly/items/3i1C251a301a0G2q2M3a/Screen%20Shot%202012-04-26%20at%2011.41.35%20AM.png)

Getting Started
===============

Add ActiveMonitor to your Gemfile with:

````ruby
gem 'active_monitor', github: 'dickeyxxx/active_monitor'
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

TODO
====

* Add client performance tools
* Find actual RPMs
* Generate fake data for controller actions
* Generate fake data for database
* Generate fake data for client performance
* Expand information on controller actions
