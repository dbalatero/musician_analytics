require File.dirname(__FILE__) + '/../spec_helper'

describe MusicianAnalytics::Twitter do
  typhoeus_spec_cache('spec/cache/twitter/get_stats') do |hydra|
    describe "#get_stats" do
      before(:each) do
        @result = MusicianAnalytics::Twitter.get_stats('operationid')
      end

      it "should get follower stats" do
        @result['followers_count'].should >= 15
      end

      it "should get friends count" do
        @result['friends_count'].should >= 15
      end
    end
  end
end
