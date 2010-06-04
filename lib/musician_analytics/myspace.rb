module MusicianAnalytics
  class Myspace < MonsterMash::Base
    get(:get_profile_views) do |myspace_username|
      uri "http://www.myspace.com/#{myspace_username}"
      handler do |response|
        data = response.body.match(/Profile Views:.+?(\d+)/mi)
        data[1].to_i
      end
    end
  end
end
