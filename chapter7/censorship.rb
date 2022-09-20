test_tweets = [
  'This president sucks!',
  'I hate this Blank House!',
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad - it sucks."
]

BANNED_PHRASES = ['sucks', 'bad', 'hate', 'foolish', 'danger to society'].freeze

# P test_tweets.each { |tweet| tweet.gsub(BANNED_PHRASES, 'CENSORED') } # need a hash for this method with gsub

# complete with methods in chapter

# loop through the tweets
test_tweets.each do |tweet|
  # for each tweet
  BANNED_PHRASES.each do |phrase|
    # if it contains a string from BANNED_PHRASES, replace with 'CENSORED'
    tweet.gsub!(phrase, 'CENSORED')
  end
end
# print the array of tweets
p test_tweets
