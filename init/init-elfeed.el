;;; init-elfeed.el --- Elfeed configurations, with feed list

(provide 'init-elfeed)

(setq elfeed-feeds
  '(("http://www.aljazeera.com/Services/Rss/?PostingId=2007731105943979989" news)
     ("http://ny.curbed.com/atom.xml" realestate news)
     ("http://www.avclub.com/feed/rss/" film entertainment news)
     ("http://fivethirtyeight.com/all/feed")
     ("http://www.tor.com/rss/frontpage_full" literature)
     ("http://longform.org/feed.rss")
     ("http://feeds.feedburner.com/themillionsblog/fedw" literature)

     ("http://feeds.bbci.co.uk/news/world/rss.xml"                    news)
     ("http://feeds.bbci.co.uk/news/business/rss.xml"                 news)
     ("http://feeds.bbci.co.uk/news/science_and_environment/rss.xml"  news)
     ("http://feeds.bbci.co.uk/news/technology/rss.xml"               news tech)
     ("http://feeds.bbci.co.uk/news/entertainment_and_arts/rss.xml"   news)

     ("http://en.boxun.com/feed/"                                     news china)

     ("http://feeds.99percentinvisible.org/99percentinvisible" design podcast)

     ("http://rss.escapistmagazine.com/news/0.xml"         entertainment videogames)
     ("http://rss.escapistmagazine.com/videos/list/1.xml"  entertainment videogames)
     ("http://www.engadget.com/tag/@gaming/rss.xml"        entertainment videogames)
     ("http://feeds.feedburner.com/RockPaperShotgun"       entertainment videogames)

     ;; software
     ("https://news.ycombinator.com/rss"                software news)
     ("http://usesthis.com/feed/"                       software)
     ("http://endlessparentheses.com/atom.xml"          software emacs)
     ("http://feeds.feedburner.com/codinghorror"        software)
     ("http://feeds.feedburner.com/thisdeveloperslife"  software)
     ("http://feeds.feedburner.com/oreilly/news"        software)
     ("http://www.joelonsoftware.com/rss.xml"           software)
     ("http://onethingwell.org/rss"                     software tech)

     ("http://pandodaily.com.feedsportal.com/c/35141/f/650422/index.rss"  tech)
     ("https://medium.com/feed/backchannel"                               tech software)
     ("http://feeds.feedburner.com/laptopmag"                             tech)
     ("http://recode.net/feed/"                                           tech)
     ("http://recode.net/category/reviews/feed/"                          tech)
     ("http://feeds.feedburner.com/AndroidPolice"                         tech android)
     ("http://bits.blogs.nytimes.com/feed/"                               tech)

     ("http://www.eater.com/rss/index.xml"                     food)
     ("http://ny.eater.com/rss/index.xml"                      food ny)
     ("http://notwithoutsalt.com/feed/"                        food)
     ("http://feeds.feedburner.com/nymag/Food"                 food)
     ("http://feeds.feedburner.com/seriouseatsfeaturesvideos"  food)
     ("http://feeds.feedburner.com/blogspot/sBff")

     ("http://xkcd.com/rss.xml"                      comic)
     ("http://feeds.feedburner.com/Explosm"          comic)
     ("http://feed.dilbert.com/dilbert/daily_strip"  comic)
     ("http://feeds.feedburner.com/smbc-comics/PvLb" comic)
     ("http://www.questionablecontent.net/QCRSS.xml" comic)
     ("http://phdcomics.com/gradfeed.php"            comic)

     ("http://feeds.feedburner.com/wondermark"       comic)
     ))

(let
  ((feed-titles
     '(("http://www.questionablecontent.net/QCRSS.xml" . "Questionable Content")
       ("http://rss.escapistmagazine.com/news/0.xml" . "The Escapist"))))
  (dolist (feed-title feed-titles)
    (setf (elfeed-meta (elfeed-db-get-feed (car feed-title))
            :title)
      (cdr feed-title))))

(setq elfeed-max-connections 10)

;;; init-elfeed.el ends here
