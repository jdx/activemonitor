require 'redis'

#uri = URI.parse(ENV["REDIS_URL"])
#REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
REDIS = Redis.new
