class GroupsController < ApplicationController

  def index
    @groups = Group.all
    # @group1 = Group.first
    # @group2 = Group.second
    # @group3 = Group.third
  end


end