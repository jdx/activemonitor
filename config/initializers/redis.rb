require 'redis'

uri = URI.parse(ENV["REDIS_URL"]) if ENV["REDIS_URL"]
uri = URI.parse(ENV["REDIS_TO_GO_URL"]) if ENV["REDIS_TO_GO_URL"]
if uri
  REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  REDIS = Redis.new
end
REDIS.client.connect
