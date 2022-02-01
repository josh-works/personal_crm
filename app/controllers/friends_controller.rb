class FriendsController < ApplicationController
  
  def index
    @friends = Friend.all
  end
  
  def new
    @friend = Friend.new
  end
  
  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to friends_path, alert: "Nice work. friend entry saved."
    else
      redirect_to new_friend_path, alert: "There was an error, please try again"
    end
  end
  
  private
  
  def friend_params
    params.require(:friend).permit(
                                    :name,
                                    :description,
                                    :address
    )
  end
  
end
