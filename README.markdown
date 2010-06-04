musician_analytics
==================

I wrote this quick library for aggregating analytics for my band, [Operation ID](http://opidmusic.com). I wanted to track Last.fm, Twitter, and Myspace interactions over time. You might want to do this too!

Coming soon: a small web app for storing/aggregating these stats.

Usage
-----

Here are some usage examples for the supported services.

Last.fm
-------

    MusicianAnalytics::Lastfm.api_key = 'myapikey'
    stats = MusicianAnalytics::Lastfm.get_stats('Operation ID')
    puts stats['playcount']
    puts stats['listeners']

Twitter
-------

    stats = MusicianAnalytics::Twitter.get_stats('operationid')
    puts stats['followers_count']
    puts stats['friends_count']

Myspace
-------

    stats = MusicianAnalytics::Myspace.get_stats('operationid')
    puts stats['profile_views']


Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2010 David Balatero <contact@opidmusic.com>. See LICENSE for details.
