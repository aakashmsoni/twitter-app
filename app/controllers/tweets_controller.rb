class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets.as_json
  end

  def update
    @tweet = Tweet.where(id: params[:id])
    @tweet.update(
      user_id: @tweet.user_id,
      tweet_text: params[:tweet_text] || @tweet.tweet_text,
    )
    if @tweet.save
      render json: @tweet.as_json
    else
      render json: { errors: @tweet.errors.full_messages }, status: 422
    end
  end
end
