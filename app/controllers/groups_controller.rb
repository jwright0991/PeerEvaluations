# Created by Jeb Alawi 7/19/18
class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :course_id, :student_ids => [])
  end
end
