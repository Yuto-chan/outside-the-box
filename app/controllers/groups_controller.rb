class GroupsController < ApplicationController

  def index
    @groups = Group.all
    # @group1 = Group.first
    # @group2 = Group.second
    # @group3 = Group.third
  end

  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmable_at = Time.now
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストとしてログインしました。ようこそ！'
  end
end