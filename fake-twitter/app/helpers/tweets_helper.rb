module TweetsHelper
  def edit_tweet_link(tweet)
    link_to('Edit', edit_tweet_path(tweet))
  end

  def delete_tweet_link(tweet)
    link_to('Delete', tweet, method: :delete)
  end

end
