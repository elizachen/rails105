class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @groups = Group.new
  end

  def create
    @groups = Group.new(group_params)
    @groups.save

    redirect_to groups_path
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  private
  def group_params
    params.require(:group).permit(:title, :description)
  end
end
