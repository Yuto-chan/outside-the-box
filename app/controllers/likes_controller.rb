class LikesController < ApplicationController
  before_action :logged_in_user

  def create
    @like = current_user.likes.create(message_id: params[:message_id])
    redirect_back(fallback_location: root_path)
    # @message = Message.find(params[:message_id])
    # @message.iine(current_user)
  end

  def destroy
    @like = Like.find_by(message_id: params[:message_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
    # @message = Like.find(params[:id]).message
    # @message.uniine(current_user)
  end
end
