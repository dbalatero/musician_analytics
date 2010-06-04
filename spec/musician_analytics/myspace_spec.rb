require File.dirname(__FILE__) + '/../spec_helper'

describe MusicianAnalytics::Myspace do
  typhoeus_spec_cache('spec/cache/myspace/get_profile_views') do |hydra|
    describe "#get_profile_views" do
      it "should return a count of profile views" do
        result = MusicianAnalytics::Myspace.
          get_profile_views('operationid')
        result.should > 400
      end
    end
  end
end
