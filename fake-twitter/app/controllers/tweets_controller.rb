class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action(:find_tweet, only: [:show, :edit, :update, :destroy])

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    # @tweet = Tweet.create(tweet_params.merge(user: current_user))
    @tweet = current_user.tweets.create(tweet_params)
    redirect_to_tweet_if_valid('You successfully created a tweet')
  end

  def edit
  end

  def update
    @tweet.update(tweet_params)
    redirect_to_tweet_if_valid('You successfully created a tweet')
  end

  def destroy
    @tweet.destroy
    redirect_to(tweets_path)
  end

  private

  def find_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    p = params[:tweet]
    p.permit(:title,:body,:location, :photo, :s3_region)
    # p.permit(:user_id) if current_user.admin?
    # p
  end

  def redirect_to_tweet_if_valid(notice)
    redirect_to(@tweet, notice: notice) if @tweet.valid?
  end

  def redirect_to_tweet(notice)
    redirect_to(@tweet, notice: notice)
  end

end
