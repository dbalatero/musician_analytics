module MusicianAnalytics
  class Myspace < MonsterMash::Base
    get(:get_stats) do |myspace_username|
      uri "http://www.myspace.com/#{myspace_username}"
      handler do |response|
        data = response.body.match(/Profile Views:.+?(\d+)/mi)
        profile_views = data[1].to_i

        { 'profile_views' => profile_views }
      end
    end
  end
end
