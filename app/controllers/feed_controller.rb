class FeedController < ApplicationController
  def index
    render :text => Net::HTTP.get_response(
      'pinkhalf.blogspot.com',
      "/feeds/posts/default/-/#{PINKHALF_FEED_TAG}"
    ).body, :content_type => 'application/atom+xml'
  end
end
