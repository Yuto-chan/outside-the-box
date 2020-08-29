class LikesController < ApplicationController
  before_action :logged_in_user

  def create

    @message = Message.find(params[:message_id])
    @message.iine(current_user)
  end

  def destroy

    @message = Like.find(params[:id]).message
    @message.uniine(current_user)
  end
end
