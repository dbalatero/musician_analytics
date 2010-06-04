require 'monster_mash'
require 'json'

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

%w(lastfm myspace twitter).each do |file|
  require "musician_analytics/#{file}"
end

module MusicianAnalytics
  VERSION = File.read(File.dirname(__FILE__) + "/../VERSION").chomp
end
