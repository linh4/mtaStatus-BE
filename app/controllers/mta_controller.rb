class MtaController < ApplicationController
  def currentFeed
    @feed =  Mta.getFeed
    render json:@feed
  end
end
