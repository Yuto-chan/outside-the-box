class GroupsController < ApplicationController

  def index
    # @group = Group.find(params[:id])
    @group = Group.all
  end

end
