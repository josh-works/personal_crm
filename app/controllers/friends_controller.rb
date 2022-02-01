class FriendsController < ApplicationController
  
  def index
    @friends = Friend.all
  end
  
  def new
    # @friend = Friend.new, maybe?
  end
  
  def create
    # @friend = Friend.new(friend_params)
  end
  
  
end
