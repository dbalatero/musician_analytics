module MusicianAnalytics
  class Twitter < MonsterMash::Base
    get(:get_stats) do |twitter_username|
      uri "http://api.twitter.com/1/users/show.json"
      params :screen_name => twitter_username
      handler do |response|
        JSON.parse(response.body)
      end
    end
  end
end
