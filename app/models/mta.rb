require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'
class Mta < ApplicationRecord


  def self.getFeed
    data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=d87c6bc3cd361b80b45294de898693e2&feed_id=1"))
    feed = Transit_realtime::FeedMessage.decode(data)
    for entity in feed.entity do
      if entity.field?(:trip_update)
        p entity.trip_update
      end
    end
  end
end
