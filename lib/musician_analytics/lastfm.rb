module MusicianAnalytics
  class Lastfm < MonsterMash::Base
    @api_key = nil
    class << self
      attr_accessor :api_key
    end

    defaults do
      params :format => 'json'
    end

    get(:get_stats) do |artist|
      uri "http://ws.audioscrobbler.com/2.0/"
      params :method => 'artist.getInfo',
             :artist => artist,
             :api_key => MusicianAnalytics::Lastfm.api_key

      handler do |response|
        json = JSON.parse(response.body)
        stats = json['artist']['stats']
        stats.keys.each do |key|
          stats[key] = stats[key].to_i
        end
        stats
      end
    end
  end
end
