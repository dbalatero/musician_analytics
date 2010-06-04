require File.dirname(__FILE__) + '/../spec_helper'

describe MusicianAnalytics::Myspace do
  typhoeus_spec_cache('spec/cache/myspace/get_stats') do |hydra|
    describe "#get_stats" do
      before(:all) do
        @result = MusicianAnalytics::Myspace.
          get_stats('operationid')
      end

      it "should return a count of profile views" do
        @result['profile_views'].should > 400
      end
    end
  end
end
