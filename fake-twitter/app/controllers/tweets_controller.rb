class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    find_tweet
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def edit
    find_tweet
  end

  def update
    find_tweet
    @tweet.update(tweet_params)
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
  end

  private

  def find_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params[:tweet].permit(:title,:body,:location)
  end

end
